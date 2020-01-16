Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 169BF13F955
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FFE6EEA5;
	Thu, 16 Jan 2020 19:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ACE06EEA5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 19:24:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 11:24:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214201992"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 11:24:38 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115140822.55756-1-michal.wajdeczko@intel.com>
 <20200115140822.55756-2-michal.wajdeczko@intel.com>
 <ec38e7fd-c810-bada-4645-2419f25552f9@intel.com>
 <op.0eh2b308xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <8a687f7c-34e2-83dd-41c8-4c638f218bda@intel.com>
Date: Thu, 16 Jan 2020 11:24:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0eh2b308xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/guc: Don't GEM_BUG_ON on
 corrupted G2H CTB
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/16/20 11:13 AM, Michal Wajdeczko wrote:
> On Thu, 16 Jan 2020 19:46:35 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>>
>>
>> On 1/15/20 6:08 AM, Michal Wajdeczko wrote:
>>> We should never BUG_ON on any corruption in CTB descriptor as
>>> data there can be also modified by the GuC. Instead we can
>>> use flag "is_in_error" to indicate that we will not process
>>> any further messages over this CTB (until reset). While here
>>> move descriptor error reporting to the function that actually
>>> touches that descriptor.
>>> =A0Note that unexpected content of the specific CT messages, that
>>> still complies with generic CT message format, shall not trigger
>>> disabling whole CTB, as that might just indicate new unsupported
>>> message types.
>>> =A0Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> ---
>>> =A0 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 42 ++++++++++++++------=
---
>>> =A0 1 file changed, 26 insertions(+), 16 deletions(-)
>>> =A0diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c =

>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> index a55c336cc5ef..0d3556a820a3 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> @@ -578,19 +578,29 @@ static inline bool ct_header_is_response(u32 =

>>> header)
>>> =A0 static int ctb_read(struct intel_guc_ct_buffer *ctb, u32 *data)
>>> =A0 {
>>> =A0=A0=A0=A0=A0 struct guc_ct_buffer_desc *desc =3D ctb->desc;
>>> -=A0=A0=A0 u32 head =3D desc->head / 4;=A0=A0=A0 /* in dwords */
>>> -=A0=A0=A0 u32 tail =3D desc->tail / 4;=A0=A0=A0 /* in dwords */
>>> -=A0=A0=A0 u32 size =3D desc->size / 4;=A0=A0=A0 /* in dwords */
>>> +=A0=A0=A0 u32 head =3D desc->head;
>>> +=A0=A0=A0 u32 tail =3D desc->tail;
>>> +=A0=A0=A0 u32 size =3D desc->size;
>>> =A0=A0=A0=A0=A0 u32 *cmds =3D ctb->cmds;
>>> -=A0=A0=A0 s32 available;=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* in dwords=
 */
>>> +=A0=A0=A0 s32 available;
>>> =A0=A0=A0=A0=A0 unsigned int len;
>>> =A0=A0=A0=A0=A0 unsigned int i;
>>> =A0 -=A0=A0=A0 GEM_BUG_ON(desc->size % 4);
>>> -=A0=A0=A0 GEM_BUG_ON(desc->head % 4);
>>> -=A0=A0=A0 GEM_BUG_ON(desc->tail % 4);
>>> -=A0=A0=A0 GEM_BUG_ON(tail >=3D size);
>>> -=A0=A0=A0 GEM_BUG_ON(head >=3D size);
>>> +=A0=A0=A0 if (unlikely(desc->is_in_error))
>>> +=A0=A0=A0=A0=A0=A0=A0 return -EPIPE;
>>
>> How do we recover from this situation? before we marked the buffer as =

>> in_error but didn't stop processing of G2H, but with this return here =

>> we do. Do we need to reset the CTB desc to recover?
> =

> before we should hit BUG_ON followed by PANIC (since we read in irq)
> now (or soon) we should be able to detect stalled CTB and then wedge
> we can't reset CTB alone as IIRC GuC keeps its own head/tail copies
> =


Ok, this is definitely better than a panic. Anyway AFAICS the only G2H =

message handle at the moment is the log flush, which is only enabled =

when we're using rolling debug logs, so there is basically 0 chance of =

hitting this in the wild. We do need to get a recovery method sorted out =

though before we start relying on having more messages. Maybe =

re-registering the buffers with GuC could work?

>>
>>> +
>>> +=A0=A0=A0 if (unlikely(!IS_ALIGNED(head, 4) ||
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 !IS_ALIGNED(tail, 4) ||
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 !IS_ALIGNED(size, 4) ||
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (tail >=3D size) || (head >=3D si=
ze))) {
>>> +=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: Invalid data in descriptor\n");
>>
>> nit: this log is redundant since we have a better message after the =

>> jump which includes the values
> =

> yeah, looking again and agree that's redundant, will remove
> =

> Initially this "better message" was here, then it was reduced after copyi=
ng
> it after jump to allow below error also to have desc details:
> =

>  =A0=A0=A0=A0DRM_ERROR("CT: incomplete message %*ph %*ph %*ph\n",
> =


With the logs fixed:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>>
>> Daniele
>>
>>> +=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
>>> +=A0=A0=A0 }
>>> +
>>> +=A0=A0=A0 /* later calculations will be done in dwords */
>>> +=A0=A0=A0 head /=3D 4;
>>> +=A0=A0=A0 tail /=3D 4;
>>> +=A0=A0=A0 size /=3D 4;
>>> =A0=A0=A0=A0=A0=A0=A0 /* tail =3D=3D head condition indicates empty */
>>> =A0=A0=A0=A0=A0 available =3D tail - head;
>>> @@ -615,7 +625,7 @@ static int ctb_read(struct intel_guc_ct_buffer =

>>> *ctb, u32 *data)
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 size - hea=
d : available - 1), &cmds[head],
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 4 * (head + available - 1=
 > size ?
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 available =
- 1 - size + head : 0), &cmds[0]);
>>> -=A0=A0=A0=A0=A0=A0=A0 return -EPROTO;
>>> +=A0=A0=A0=A0=A0=A0=A0 goto corrupted;
>>> =A0=A0=A0=A0=A0 }
>>> =A0=A0=A0=A0=A0=A0=A0 for (i =3D 1; i < len; i++) {
>>> @@ -626,6 +636,12 @@ static int ctb_read(struct intel_guc_ct_buffer =

>>> *ctb, u32 *data)
>>> =A0=A0=A0=A0=A0=A0=A0 desc->head =3D head * 4;
>>> =A0=A0=A0=A0=A0 return 0;
>>> +
>>> +corrupted:
>>> +=A0=A0=A0 DRM_ERROR("CT: Corrupted descriptor addr=3D%#x head=3D%u tai=
l=3D%u =

>>> size=3D%u\n",
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc->addr, desc->head, desc->tail, desc->=
size);
>>> +=A0=A0=A0 desc->is_in_error =3D 1;
>>> +=A0=A0=A0 return -EPIPE;
>>> =A0 }
>>> =A0=A0=A0 /**
>>> @@ -836,10 +852,4 @@ void intel_guc_ct_event_handler(struct =

>>> intel_guc_ct *ct)
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 else
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D ct_handle_request(ct, m=
sg);
>>> =A0=A0=A0=A0=A0 } while (!err);
>>> -
>>> -=A0=A0=A0 if (GEM_WARN_ON(err =3D=3D -EPROTO)) {
>>> -=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Corrupted message: %#x\n", msg[0]);
>>> -=A0=A0=A0=A0=A0=A0=A0 ctb->desc->is_in_error =3D 1;
>>> -=A0=A0=A0 }
>>> =A0 }
>>> -
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
