Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPK8Dx3j8GmoagEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 18:41:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 010784892B4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 18:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CECA10EBE7;
	Tue, 28 Apr 2026 16:40:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=embeddedor.com header.i=@embeddedor.com header.b="PoIIE7t8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Tue, 28 Apr 2026 16:40:55 UTC
Received: from omta34.uswest2.a.cloudfilter.net
 (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2052910E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2026 16:40:55 +0000 (UTC)
Received: from eig-obgw-6002b.ext.cloudfilter.net ([10.0.30.203])
 by cmsmtp with ESMTPS
 id Hj3ywpY7orDqVHlNbw2nAS; Tue, 28 Apr 2026 16:33:47 +0000
Received: from gator4166.hostgator.com ([108.167.190.91]) by cmsmtp with ESMTPS
 id HlNawpIgfbONDHlNaw4jv6; Tue, 28 Apr 2026 16:33:46 +0000
X-Authority-Analysis: v=2.4 cv=XdKJzJ55 c=1 sm=1 tr=0 ts=69f0e16a
 a=vY9Mjuda9oMEc2E4Cx1x2A==:117 a=vY9Mjuda9oMEc2E4Cx1x2A==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=7T7KSl7uo7wA:10 a=c92rfblmAAAA:8
 a=VwQbUJbxAAAA:8 a=-lHa08R6ZhYopAfIOb8A:9 a=QEXdDO2ut3YA:10
 a=GvGzcOZaWPEFPQC_NcjD:22 a=2aFnImwKRvkU0tJ3nQRT:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kSmTUZAfKefQAJxg+Et3xbccxjjS+rHdTDM7iO/aGJg=; b=PoIIE7t8n8jY0K+Mpg66RBRyA8
 9Fy2G6XGaYrEml+Remx4NKm4lR0Wef0L2dhGw2k5X7eX6RJy05ZE73E+w2vm4t97jj8gq7gZViMPa
 o0Q3ADNqI8PZdbJfRnvD2utGzt7kOGniLg7+EWngjPL0pdnksoKTA0VT/oi2R3lF4lExoeqfz/nAc
 ilNc6ywR9wtoH2a7OWEj9IMaL9pjI3B2GACSI6A+NLJRhMh617wiwV2IgTjKDdBglkuhXIlpDMxK3
 /p5ETmpokgvbQI9D8j8v68TI49yduwZo3vWjzxuHESCRMCMdrhi2z7S5wcUR3ogoz1NVMxLiBR7ww
 v20qHb1g==;
Received: from [177.238.19.10] (port=48828 helo=[192.168.0.104])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.99.1)
 (envelope-from <gustavo@embeddedor.com>) id 1wHlNZ-00000002RuV-1Y66;
 Tue, 28 Apr 2026 11:33:45 -0500
Message-ID: <2d713338-1eb5-4164-816a-6c0f91c8a9e4@embeddedor.com>
Date: Tue, 28 Apr 2026 10:32:46 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH][next] drm/i915/gvt: Avoid -Wflex-array-member-not-at-end
 warning
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Zhenyu Wang <zhenyuw.linux@gmail.com>, Zhi Wang <zhi.wang.linux@gmail.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <ae_4GkBsNl_0SYTm@kspp>
 <4d5f5949b34f7bba00ed570ad2098074aa0c05f5@intel.com>
Content-Language: en-US
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <4d5f5949b34f7bba00ed570ad2098074aa0c05f5@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.freedesktop.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 177.238.19.10
X-Source-L: No
X-Exim-ID: 1wHlNZ-00000002RuV-1Y66
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.0.104]) [177.238.19.10]:48828
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfICpElY7/1YgRpG6YgxOCBpQB0I7xVsrxSR2fNBsAi65UFQ1ngSUb5hFI1dMwAthCzurXFrOyCh/0uDePk+BuHHRr+MeYT4lSJk8zauylRkWpxu90N75
 9ps1AvjUrseW6KgChaFFoyQHaHnlXUpDQOcDpoKICrKy9TQzmneuzL8ZaRR5qcmV2j5aCDVodV2SBLIrv6Ldy/Pf9vWBNcyzLwd595yAbXjsHX1gn+OMHqHg
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 010784892B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[embeddedor.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[embeddedor.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:gustavoars@kernel.org,m:zhenyuw.linux@gmail.com,m:zhi.wang.linux@gmail.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:zhenyuwlinux@gmail.com,m:zhiwanglinux@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,gmail.com,intel.com,ursulin.net,ffwll.ch];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[gustavo@embeddedor.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	HAS_X_SOURCE(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gustavo@embeddedor.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[embeddedor.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_SPAM(0.00)[0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,sashiko.dev:url]



On 4/28/26 01:53, Jani Nikula wrote:
> On Mon, 27 Apr 2026, "Gustavo A. R. Silva" <gustavoars@kernel.org> wrote:
>> -Wflex-array-member-not-at-end was introduced in GCC-14, and we are
>> getting ready to enable it, globally.
>>
>> Use the TRAILING_OVERLAP() helper to fix the following warning:
>>
>> drivers/gpu/drm/i915/gvt/opregion.c:126:40: warning: structure containing a flexible array member is not at the end of another structure [-Wflex-array-member-not-at-end]
>>
>> This helper creates a union between a flexible-array member (FAM)
>> and a set of members that would otherwise follow it. This overlays
>> the trailing members onto the FAM while preserving the original
>> memory layout.
>>
>> Lastly, the static_assert() ensures the alignment between the FAM and
>> struct efp_child_device_config child0; is not inadvertently changed,
>> and it's intentionally placed inmediately after the related structure
>> (that is, no blank line in between).
>>
>> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
>> ---
>>   drivers/gpu/drm/i915/gvt/opregion.c | 20 ++++++++++++--------
>>   1 file changed, 12 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
>> index d6e76ba31d60..efe457c02788 100644
>> --- a/drivers/gpu/drm/i915/gvt/opregion.c
>> +++ b/drivers/gpu/drm/i915/gvt/opregion.c
>> @@ -122,17 +122,21 @@ struct vbt {
>>   	struct bdb_data_header general_features_header;
>>   	struct bdb_general_features general_features;
>>   
>> -	struct bdb_data_header general_definitions_header;
>> -	struct bdb_general_definitions general_definitions;
>> -
>> -	struct efp_child_device_config child0;
>> -	struct efp_child_device_config child1;
>> -	struct efp_child_device_config child2;
>> -	struct efp_child_device_config child3;
>> -
>>   	struct bdb_data_header driver_features_header;
>>   	struct bdb_driver_features driver_features;
>> +
>> +	struct bdb_data_header general_definitions_header;
>> +
>> +	/* Must be last as it ends in a flexible-array member. */
>> +	TRAILING_OVERLAP(struct bdb_general_definitions, general_definitions, devices,
>> +		struct efp_child_device_config child0;
>> +		struct efp_child_device_config child1;
>> +		struct efp_child_device_config child2;
>> +		struct efp_child_device_config child3;
>> +	);
> 
> So this impacts the generation of a binary blob, parsed by the client OS
> driver. In theory, the order of the BDB blocks shouldn't matter, but who
> knows.
> 
> Anyway, I'm more worried about inadvertent padding potentially being
> introduced. struct vbt should have __packed attribute, which is missing,
> but I also think the union and the struct within TRAILING_OVERLAP()
> should also have __packed.
> 
> Like, if struct efp_child_device_config gets extended by one byte,
> what's going to happen with padding? It's __packed on its own, but IIUC
> that doesn't automatically apply to the enclosing structs or unions.

We have __TRAILING_OVERLAP() to add attributes like __packed to the
overlapping group of MEMBERS.

So, the patch would look as follows (including the addition of __packed to
struct vbt):

diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
index d6e76ba31d60..f4fabba56a1b 100644
--- a/drivers/gpu/drm/i915/gvt/opregion.c
+++ b/drivers/gpu/drm/i915/gvt/opregion.c
@@ -122,17 +122,21 @@ struct vbt {
         struct bdb_data_header general_features_header;
         struct bdb_general_features general_features;

-       struct bdb_data_header general_definitions_header;
-       struct bdb_general_definitions general_definitions;
-
-       struct efp_child_device_config child0;
-       struct efp_child_device_config child1;
-       struct efp_child_device_config child2;
-       struct efp_child_device_config child3;
-
         struct bdb_data_header driver_features_header;
         struct bdb_driver_features driver_features;
-};
+
+       struct bdb_data_header general_definitions_header;
+
+       /* Must be last as it ends in a flexible-array member. */
+       __TRAILING_OVERLAP(struct bdb_general_definitions, general_definitions, devices, __packed,
+               struct efp_child_device_config child0;
+               struct efp_child_device_config child1;
+               struct efp_child_device_config child2;
+               struct efp_child_device_config child3;
+       );
+} __packed;
+static_assert(offsetof(struct vbt, general_definitions.devices) ==
+             offsetof(struct vbt, child0));

However, Sashiko says this[1]:

"Does moving these fields physically change the byte-for-byte layout and
block sequence of the VBT exposed to the guest VM?
struct vbt represents the exact layout of the synthetic VBT exposed to the
guest VM via the OpRegion. In intel_vgpu_init_opregion(), the structure is
directly copied to guest memory:
drivers/gpu/drm/i915/gvt/opregion.c:intel_vgpu_init_opregion() {
         ...
         memcpy(buf + INTEL_GVT_OPREGION_VBT_OFFSET, &v, sizeof(struct vbt));
         ...
}"

If shuffling fields around actually causes any issues, I can use a different
approach, like the one below (thanks to -fms-extensions):

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 0dc13d080e8a..b238636e315e 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -568,7 +568,7 @@ struct child_device_config {
         u32 edp_data_rate_override_reserved:20;                 /* 263+ */
  } __packed;

-struct bdb_general_definitions {
+struct bdb_general_definitions_hdr {
         /* DDC GPIO */
         u8 crt_ddc_gmbus_pin;

@@ -581,7 +581,10 @@ struct bdb_general_definitions {
         /* boot device bits */
         u8 boot_display[2];
         u8 child_dev_size;
+} __packed;

+struct bdb_general_definitions {
+       struct bdb_general_definitions_hdr;
         /*
          * Device info:
          * If TV is present, it'll be at devices[0].
diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
index d6e76ba31d60..3ebdc4c28c5b 100644
--- a/drivers/gpu/drm/i915/gvt/opregion.c
+++ b/drivers/gpu/drm/i915/gvt/opregion.c
@@ -123,7 +123,7 @@ struct vbt {
         struct bdb_general_features general_features;

         struct bdb_data_header general_definitions_header;
-       struct bdb_general_definitions general_definitions;
+       struct bdb_general_definitions_hdr general_definitions;

         struct efp_child_device_config child0;
         struct efp_child_device_config child1;
@@ -132,7 +132,7 @@ struct vbt {

         struct bdb_data_header driver_features_header;
         struct bdb_driver_features driver_features;
-};
+} __packed;

  static void virt_vbt_generation(struct vbt *v)
  {

However, in this particular case, __TRAILING_OVERLAP() is more robust.

Thanks for the feedback!
-Gustavo

[1] https://sashiko.dev/#/patchset/ae_4GkBsNl_0SYTm%40kspp
