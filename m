Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8AF32347C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 01:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B4B6E8A0;
	Wed, 24 Feb 2021 00:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87136E8A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 00:34:44 +0000 (UTC)
IronPort-SDR: QFPHk5POepiWiHsGDbqIqOewRoOtKuyKHesulgYSy7clxXB7Oc43Ae/lSnrX5QQgm+6nQLriB0
 Wb0H35DnMdOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="249057832"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="249057832"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 16:34:44 -0800
IronPort-SDR: 1F2tHmG04Ky8QPuG/+DXD/CmX5UP4U/A/+R05LUGQKxX+Q2CYuTF0zmSm2Yg1NH4Yh+qZv2Ivg
 +ynUP/f8F/wg==
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="583427905"
Received: from mdweiler-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.95.214])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 16:34:43 -0800
Date: Tue, 23 Feb 2021 16:34:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210224003443.p6rptddqz55bfo5t@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <cover.1613580193.git.jani.nikula@intel.com>
 <bf2f1c9527e17310d69a818e09a7212df4ada347.1613580193.git.jani.nikula@intel.com>
 <20210217172300.6uuie7js4a4cpqvl@ldmartin-desk1>
 <20210217172805.xjtrptege3qpbunn@ldmartin-desk1>
 <87zh02a2ze.fsf@intel.com>
 <20210217195803.cihhahgvybgj45lu@ldmartin-desk1>
 <87wnuyewlg.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wnuyewlg.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/bios: limit default outputs
 to ports A through F
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 23, 2021 at 03:34:51PM +0200, Jani Nikula wrote:
>On Wed, 17 Feb 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Wed, Feb 17, 2021 at 09:49:57PM +0200, Jani Nikula wrote:
>>>On Wed, 17 Feb 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>> On Wed, Feb 17, 2021 at 09:23:00AM -0800, Lucas De Marchi wrote:
>>>>>On Wed, Feb 17, 2021 at 07:03:34PM +0200, Jani Nikula wrote:
>>>>>>With the defaults limited to non-TypeC ports in commit 828ccb31cf41
>>>>>>("drm/i915/icl: Add TypeC ports only if VBT is present"), this should=
 be
>>>>>>a no-op, but clarifies the code and prepares for subsequent changes.
>>>>>>
>>>>>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>>>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>>>---
>>>>>>drivers/gpu/drm/i915/display/intel_bios.c | 3 ++-
>>>>>>1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>>
>>>>>>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/=
drm/i915/display/intel_bios.c
>>>>>>index e9cb15aa2f5a..b9d99324d66d 100644
>>>>>>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>>>>>>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>>>>>@@ -2057,11 +2057,12 @@ static void
>>>>>>init_vbt_missing_defaults(struct drm_i915_private *i915)
>>>>>>{
>>>>>>	enum port port;
>>>>>>+	int ports =3D PORT_A | PORT_B | PORT_C | PORT_D | PORT_E | PORT_F;
>>>>>
>>>>>
>>>>>I'd not spread the knowledge of what port uses tc phy like this.
>>>>>It's painful to maintain.
>>>
>>>Umm, this wasn't meant to have anything to do with tc, really. Granted,
>>>the commit message is misleading.
>>
>> ok, makes more sense now. I don't want us to keep updating this function
>> when the ports change on new platforms.
>
>Agreed.
>
>>
>>>
>>>>
>>>> also, not sure how this clarifies things if PORT_TC1 aliases PORT_D,
>>>> so I'd just drop this patch
>>>
>>>The point is that I'd like to reduce the number of ports set up by
>>>default, perhaps even further than this. It's a bit silly to generate 9
>>>dummy child devices on certain platforms when there's no VBT.
>>
>> ok. So what would be the devices without vbt? I remember relying on this
>> for e.g. dg1 before we could read it.
>
>If it were just for enabling, I'd start some igt tool to generate a
>basic VBT to use with i915.vbt_firmware and the firmware loader. It's
>the existing products that ended up depending on the defaults that are
>the real issue I think.
>
>> What other platforms should we care about? And for those, should we
>> really care about ports E and F or could we reduce it to, say the first
>> 4?
>
>IIRC they were some Haswell or Broadwell era Chromebooks. They probably
>don't use very many ports, but in theory it could be A-D,F on DDI
>platforms (E requires VBT child device). On gen 11 it could be A-E, with
>F requiring VBT child device.
>
>A-F covers all cases, but does not try to create G-I or any further
>future ports.


ok, thanks for confirming.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi


>
>
>BR,
>Jani.
>
>
>>
>> thanks
>> Lucas De Marchi
>>
>>>
>>>
>>>BR,
>>>Jani.
>>>
>>>>
>>>> Lucas De Marchi
>>>>
>>>>>Lucas De Marchi
>>>>>
>>>>>>
>>>>>>	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
>>>>>>		return;
>>>>>>
>>>>>>-	for_each_port(port) {
>>>>>>+	for_each_port_masked(port, ports) {
>>>>>>		struct ddi_vbt_port_info *info =3D
>>>>>>			&i915->vbt.ddi_port_info[port];
>>>>>>		enum phy phy =3D intel_port_to_phy(i915, port);
>>>>>>--
>>>>>>2.20.1
>>>>>>
>>>> _______________________________________________
>>>> Intel-gfx mailing list
>>>> Intel-gfx@lists.freedesktop.org
>>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>>>
>>>--
>>>Jani Nikula, Intel Open Source Graphics Center
>
>-- =

>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
