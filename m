Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D23139C03
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 22:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0507A89CAA;
	Mon, 13 Jan 2020 21:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0B7D89CAA
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 21:59:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 13:59:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,430,1571727600"; d="scan'208";a="246121551"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.255.88.44])
 ([10.255.88.44])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2020 13:59:46 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
 <20200111231114.59208-3-michal.wajdeczko@intel.com>
 <138a54aa-de99-c4f3-1b9f-32d8f34a28db@intel.com>
 <op.0ecmxiozxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <cfd21b49-1eff-9e9d-5754-86380e02a154@intel.com>
Date: Mon, 13 Jan 2020 13:59:46 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <op.0ecmxiozxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/guc: Introduce CT_ERROR
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



On 1/13/2020 12:52 PM, Michal Wajdeczko wrote:
> On Mon, 13 Jan 2020 21:20:25 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
>
>>
>>
>> On 1/11/2020 3:11 PM, Michal Wajdeczko wrote:
>>> We should start using dev variants of error logging and
>>> to simplify that introduce helper macro that will do any
>>> necessary conversions to obtain pointer to device struct.
>>>
>>> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> ---
>>> =A0 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 46 =

>>> ++++++++++++++++-------
>>> =A0 1 file changed, 32 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c =

>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> index 4aa07a53a9cf..eb123543392a 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> @@ -5,7 +5,10 @@
>>> =A0=A0=A0 #include "i915_drv.h"
>>> =A0 #include "intel_guc_ct.h"
>>> +#include "gt/intel_gt.h"
>>> =A0 +#define CT_ERROR(_ct, _fmt, ...) \
>>> +=A0=A0=A0 DRM_DEV_ERROR(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
>>> =A0 #ifdef CONFIG_DRM_I915_DEBUG_GUC
>>> =A0 #define CT_DEBUG_DRIVER(...) DRM_DEBUG_DRIVER(__VA_ARGS__)
>>
>> I'm not convinced by the fact that CT_ERROR and CT_DEBUG_DRIVER now =

>> have different styles. Maybe we should go with something like:
>>
>> #define __CT_MSG(level, _ct, _fmt, ...) \
>> =A0=A0=A0=A0DRM_DEV_##level(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
>>
>> #define CT_ERROR(_ct, _fmt, ...) __CT_MSG(ERROR, _ct, _fmt, =

>> ##__VA_ARGS__)
>>
>> #ifdef CONFIG_DRM_I915_DEBUG_GUC
>> #define CT_DEBUG(_ct, _fmt, ...) \
>> =A0=A0=A0=A0__CT_MSG(DEBUG_DRIVER, _ct, _fmt, ##__VA_ARGS__)
>> #else
>> #define CT_DEBUG(...)=A0 do { } while (0)
>> #endif
>>
>>
>> Thoughts?
>
> This is on my todo-list: I'm planning to add CT_DEBUG (with unified
> style) after completing some other necessary refactoring to get 'ct'
> in all places where we would like to replace old CT_DEBUG_DRIVER (as
> you may notice now in some places we don't have ct/dev handy)
>

If you're committing to land those other reworks in a reasonable time =

after this is merged, then:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> Michal
>
>>
>> Daniele
>>
>>> =A0 #else
>>> @@ -48,6 +51,21 @@ static inline struct intel_guc *ct_to_guc(struct =

>>> intel_guc_ct *ct)
>>> =A0=A0=A0=A0=A0 return container_of(ct, struct intel_guc, ct);
>>> =A0 }
>>> =A0 +static inline struct intel_gt *ct_to_gt(struct intel_guc_ct *ct)
>>> +{
>>> +=A0=A0=A0 return guc_to_gt(ct_to_guc(ct));
>>> +}
>>> +
>>> +static inline struct drm_i915_private *ct_to_i915(struct =

>>> intel_guc_ct *ct)
>>> +{
>>> +=A0=A0=A0 return ct_to_gt(ct)->i915;
>>> +}
>>> +
>>> +static inline struct device *ct_to_dev(struct intel_guc_ct *ct)
>>> +{
>>> +=A0=A0=A0 return ct_to_i915(ct)->drm.dev;
>>> +}
>>> +
>>> =A0 static inline const char *guc_ct_buffer_type_to_str(u32 type)
>>> =A0 {
>>> =A0=A0=A0=A0=A0 switch (type) {
>>> @@ -157,8 +175,8 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
>>> =A0=A0=A0=A0=A0=A0 */
>>> =A0=A0=A0=A0=A0=A0=A0 err =3D intel_guc_allocate_and_map_vma(guc, PAGE_=
SIZE, =

>>> &ct->vma, &blob);
>>> -=A0=A0=A0 if (err) {
>>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: channel allocation failed; err=3D=
%d\n", err);
>>> +=A0=A0=A0 if (unlikely(err)) {
>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Failed to allocate CT channel (err=
=3D%d)\n", err);
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return err;
>>> =A0=A0=A0=A0=A0 }
>>> =A0 @@ -240,7 +258,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>> =A0=A0=A0=A0=A0 guc_action_deregister_ct_buffer(guc,
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 INTEL_G=
UC_CT_BUFFER_TYPE_RECV);
>>> =A0 err_out:
>>> -=A0=A0=A0 DRM_ERROR("CT: can't open channel; err=3D%d\n", err);
>>> +=A0=A0=A0 CT_ERROR(ct, "Failed to open open CT channel (err=3D%d)\n", =
err);
>>> =A0=A0=A0=A0=A0 return err;
>>> =A0 }
>>> =A0 @@ -526,8 +544,8 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, =

>>> const u32 *action, u32 len,
>>> =A0=A0=A0=A0=A0=A0=A0 ret =3D ct_send(ct, action, len, response_buf, =

>>> response_buf_size, &status);
>>> =A0=A0=A0=A0=A0 if (unlikely(ret < 0)) {
>>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: send action %#X failed; err=3D%d =
status=3D%#X\n",
>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 action[0], ret, status);
>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Sending action %#x failed (err=3D%=
d =

>>> status=3D%#X)\n",
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 action[0], ret, status);
>>> =A0=A0=A0=A0=A0 } else if (unlikely(ret)) {
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 CT_DEBUG_DRIVER("CT: send action %#x return=
ed %d (%#x)\n",
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 action[0], ret, ret=
);
>>> @@ -639,7 +657,7 @@ static int ct_handle_response(struct =

>>> intel_guc_ct *ct, const u32 *msg)
>>> =A0=A0=A0=A0=A0=A0=A0 /* Response payload shall at least include fence =
and status */
>>> =A0=A0=A0=A0=A0 if (unlikely(len < 2)) {
>>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: corrupted response %*ph\n", msgsi=
ze, msg);
>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Corrupted response %*ph\n", msgsiz=
e, msg);
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EPROTO;
>>> =A0=A0=A0=A0=A0 }
>>> =A0 @@ -649,7 +667,7 @@ static int ct_handle_response(struct =

>>> intel_guc_ct *ct, const u32 *msg)
>>> =A0=A0=A0=A0=A0=A0=A0 /* Format of the status follows RESPONSE message =
*/
>>> =A0=A0=A0=A0=A0 if (unlikely(!INTEL_GUC_MSG_IS_RESPONSE(status))) {
>>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: corrupted response %*ph\n", msgsi=
ze, msg);
>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Corrupted response %*ph\n", msgsiz=
e, msg);
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EPROTO;
>>> =A0=A0=A0=A0=A0 }
>>> =A0 @@ -663,8 +681,8 @@ static int ct_handle_response(struct =

>>> intel_guc_ct *ct, const u32 *msg)
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 continue;
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 if (unlikely(datalen > req->response_len)) {
>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: response %u too long =
%*ph\n",
>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 req->fence, msgsiz=
e, msg);
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Response for %u is too=
 long %*ph\n",
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 req->fence, msgsize, =
msg);
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 datalen =3D 0;
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 if (datalen)
>>> @@ -677,7 +695,7 @@ static int ct_handle_response(struct =

>>> intel_guc_ct *ct, const u32 *msg)
>>> =A0=A0=A0=A0=A0 spin_unlock(&ct->requests.lock);
>>> =A0=A0=A0=A0=A0=A0=A0 if (!found)
>>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: unsolicited response %*ph\n", msg=
size, msg);
>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Unsolicited response %*ph\n", msgs=
ize, msg);
>>> =A0=A0=A0=A0=A0 return 0;
>>> =A0 }
>>> =A0 @@ -698,8 +716,8 @@ static void ct_process_request(struct =

>>> intel_guc_ct *ct,
>>> =A0=A0=A0=A0=A0=A0=A0 default:
>>> =A0 fail_unexpected:
>>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: unexpected request %x %*ph\n",
>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 action, 4 * len, payload);
>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Unexpected request %x %*ph\n",
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 action, 4 * len, payload);
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
>>> =A0=A0=A0=A0=A0 }
>>> =A0 }
>>> @@ -775,7 +793,7 @@ static int ct_handle_request(struct intel_guc_ct =

>>> *ct, const u32 *msg)
>>> =A0=A0=A0=A0=A0=A0=A0 request =3D kmalloc(sizeof(*request) + msgsize, G=
FP_ATOMIC);
>>> =A0=A0=A0=A0=A0 if (unlikely(!request)) {
>>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: dropping request %*ph\n", msgsize=
, msg);
>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Dropping request %*ph\n", msgsize,=
 msg);
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return 0; /* XXX: -ENOMEM ? */
>>> =A0=A0=A0=A0=A0 }
>>> =A0=A0=A0=A0=A0 memcpy(request->msg, msg, msgsize);
>>> @@ -815,7 +833,7 @@ void intel_guc_ct_event_handler(struct =

>>> intel_guc_ct *ct)
>>> =A0=A0=A0=A0=A0 } while (!err);
>>> =A0=A0=A0=A0=A0=A0=A0 if (GEM_WARN_ON(err =3D=3D -EPROTO)) {
>>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: corrupted message detected!\n");
>>> +=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Corrupted message: %#x\n", msg[0]);
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 ctb->desc->is_in_error =3D 1;
>>> =A0=A0=A0=A0=A0 }
>>> =A0 }

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
