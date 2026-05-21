Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BZWDp9pD2qOLAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 22:22:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D88A25ABB9B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 22:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BFD210F3FC;
	Thu, 21 May 2026 20:22:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="OHVXCe+g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E13010E20B;
 Thu, 21 May 2026 20:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dLH47khp6dTbaqV12m7BRmMvYC5A6tOGJci12TkiRzw=; b=OHVXCe+gaufJ5CtM3bc1BXHLRp
 qs3lfP3384IeaLQP9r5j2MTwtyaO8bLCrRGtge0oESsFYn0EmBfExHFgqkLRx+2Eqb7CjRIbIE9CB
 NTmMVeIrjdLxWY2Evu5eDXX+EoafgjbR5PyCUxyPGidbtPQIrwR/otn5+RQpjeMq5Wt6AHlOdHccd
 /siUwDoUJ0sEhUrW/apLlYRrwX/7karFr8CTFNHv8PbID/+XghsiybgZagMlGx2LgHTb7U0Ug1vkf
 HCksQ4zakdEEgYExMrH+oTVRP9Pm+Eq3c5OEJGeJCJR/fySjbCLLCAS3s2HQpDunnHL0FKPbED7hp
 EqskxVxA==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wQ9uh-004XCP-Tk; Thu, 21 May 2026 22:22:40 +0200
Content-Type: multipart/alternative;
 boundary="------------s0YQ9023fgdLmWWJR6PmzlKj"
Message-ID: <7ab49cd4-3c81-4441-bfed-c58c3e1bead0@Igalia.com>
Date: Thu, 21 May 2026 13:22:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3,2/7] drm: writeback: Modify writeback init helpers
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "kernel-list@raspberrypi.com" <kernel-list@raspberrypi.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 "dmitry.baryshkov@oss.qualcomm.com" <dmitry.baryshkov@oss.qualcomm.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "harry.wentland@amd.com" <harry.wentland@amd.com>,
 "siqueira@igalia.com" <siqueira@igalia.com>,
 "alexander.deucher@amd.com" <alexander.deucher@amd.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "airlied@gmail.com" <airlied@gmail.com>, "simona@ffwll.ch"
 <simona@ffwll.ch>, "liviu.dudau@arm.com" <liviu.dudau@arm.com>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "robin.clark@oss.qualcomm.com" <robin.clark@oss.qualcomm.com>,
 "abhinav.kumar@linux.dev" <abhinav.kumar@linux.dev>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>, "sean@poorly.ru"
 <sean@poorly.ru>,
 "marijn.suijten@somainline.org" <marijn.suijten@somainline.org>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 "dave.stevenson@raspberrypi.com" <dave.stevenson@raspberrypi.com>,
 "tomi.valkeinen+renesas@ideasonboard.com"
 <tomi.valkeinen+renesas@ideasonboard.com>,
 "kieran.bingham+renesas@ideasonboard.com"
 <kieran.bingham+renesas@ideasonboard.com>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>
References: <20260316083008.87466-3-suraj.kandpal@intel.com>
 <9628ae91-a725-469b-976b-e66546d82214@Igalia.com>
 <DM3PPF208195D8DBB2DD0F9EEAC64C8AD2FE30E2@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <DM3PPF208195D8DBB2DD0F9EEAC64C8AD2FE30E2@DM3PPF208195D8D.namprd11.prod.outlook.com>
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
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,oss.qualcomm.com,amd.com,igalia.com,gmail.com,ffwll.ch,arm.com,linux.intel.com,kernel.org,linux.dev,suse.de,poorly.ru,somainline.org,ideasonboard.com,raspberrypi.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	NEURAL_HAM(-0.00)[-0.816];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D88A25ABB9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.
--------------s0YQ9023fgdLmWWJR6PmzlKj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/20/26 20:25, Kandpal, Suraj wrote:
>> -----Original Message-----
>> From: John Harrison<John.Harrison@Igalia.com>
>> Sent: Monday, May 4, 2026 11:15 PM
>> To: Kandpal, Suraj<suraj.kandpal@intel.com>;
>> freedreno@lists.freedesktop.org;dri-devel@lists.freedesktop.org; kernel-
>> list@raspberrypi.com;amd-gfx@lists.freedesktop.org; linux-
>> kernel@vger.kernel.org;intel-xe@lists.freedesktop.org; intel-
>> gfx@lists.freedesktop.org
>> Cc: Nautiyal, Ankit K<ankit.k.nautiyal@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>;dmitry.baryshkov@oss.qualcomm.com; Murthy,
>> Arun R<arun.r.murthy@intel.com>; Nikula, Jani<jani.nikula@intel.com>;
>> harry.wentland@amd.com;siqueira@igalia.com;
>> alexander.deucher@amd.com;christian.koenig@amd.com;
>> airlied@gmail.com;simona@ffwll.ch;liviu.dudau@arm.com;
>> maarten.lankhorst@linux.intel.com;mripard@kernel.org;
>> robin.clark@oss.qualcomm.com;abhinav.kumar@linux.dev;
>> tzimmermann@suse.de;sean@poorly.ru;marijn.suijten@somainline.org;
>> laurent.pinchart+renesas@ideasonboard.com;
>> dave.stevenson@raspberrypi.com;
>> tomi.valkeinen+renesas@ideasonboard.com;
>> kieran.bingham+renesas@ideasonboard.com;kernel-dev@igalia.com
>> Subject: Re: [v3,2/7] drm: writeback: Modify writeback init helpers
>>
>> On 3/16/26 01:30, Suraj Kandpal wrote:
>>> Now with drm_writeback_connector moved to drm_connector it makes
>> more
>>> sense use drm_connector as an argument rather than
>>> drm_writeback_connector. The writeback connector can easily be derived
>>> from drm_connector.
> Hi John
> First of all thanks for helping to move this series forward.
>
>> So this patch and all five subsequent patches are basically the same search
>> and replace of base_conn->wb_conn to base_conn in the DRM level helper
>> functions, yes? I would add a little more explanation of why "it makes more
>> sense". Something like: "Some of the writeback helper functions require
>> access to the parent drm_connector object as well as the
>> drm_writeback_connector object itself. So, pass in the top level object and
>> traverse down rather than passing in the lower level object and traversing
>> back up. Even where such is not the case, update to use the top level object
>> for consistency across the interface."
> Sure will update the commit message.
>
>> Also, there could be better consistency across these 'modify' patches.
>> First, the subject of patches 1-5 should be 'drm/writeback: ...' not
>> 'drm: writeback: ...'. Then you have 'modify XXX helpers', 'modify XXX params'
>> and 'modify params for XXX'.
> Sure will keep the subject consistent
>
>> It would be cleaner to pick a single variant and
>> use that for all the patches. Lastly, are the final two patches really
>> 'drm/connector:'? The header file with the function declarations being
>> updated is drm_modeset_helper_vtables.h. Which would make the prefix
>> 'drm/modeset'? Although, given that the declarations are specific to
>> writeback support, I would just stick with 'drm/writeback'
>> for all seven patches.
> Sure will update the prefix for last two patches as well.
> Although in regard to drm/writeback after grepping the git log it seems that
> drm: writeback: is the correct prefix actually the correct wording would be more prevalent prefix. So I would like to keep that
> the consistently across all my patches as well.
Just because someone else got it wrong earlier doesn't mean we should 
continue to get it wrong ;).

General consensus for DRM patches is "drm/xxx/yyy: zzzz" rather than 
'drm: xxx: yyy: zzz". As demonstrated:
   git log --oneline | grep -E 'drm: [a-z\:\ ]+:' | wc -l
   1607
   git log --oneline | grep -E 'drm/[a-z\/]+:' | wc -l
   67140

Not sure if there is an official statement in the style guide about it 
though, and maybe it is just personal preference. So not a blocker from 
me, but personally, I would go with the majority on this one.

John.

--------------s0YQ9023fgdLmWWJR6PmzlKj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 5/20/26 20:25, Kandpal, Suraj wrote:<span
      style="white-space: pre-wrap">
</span></div>
    <blockquote type="cite"
cite="mid:DM3PPF208195D8DBB2DD0F9EEAC64C8AD2FE30E2@DM3PPF208195D8D.namprd11.prod.outlook.com">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">-----Original Message-----
From: John Harrison <a class="moz-txt-link-rfc2396E" href="mailto:John.Harrison@Igalia.com">&lt;John.Harrison@Igalia.com&gt;</a>
Sent: Monday, May 4, 2026 11:15 PM
To: Kandpal, Suraj <a class="moz-txt-link-rfc2396E" href="mailto:suraj.kandpal@intel.com">&lt;suraj.kandpal@intel.com&gt;</a>;
<a class="moz-txt-link-abbreviated" href="mailto:freedreno@lists.freedesktop.org">freedreno@lists.freedesktop.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:dri-devel@lists.freedesktop.org">dri-devel@lists.freedesktop.org</a>; kernel-
<a class="moz-txt-link-abbreviated" href="mailto:list@raspberrypi.com">list@raspberrypi.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:amd-gfx@lists.freedesktop.org">amd-gfx@lists.freedesktop.org</a>; linux-
<a class="moz-txt-link-abbreviated" href="mailto:kernel@vger.kernel.org">kernel@vger.kernel.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:intel-xe@lists.freedesktop.org">intel-xe@lists.freedesktop.org</a>; intel-
<a class="moz-txt-link-abbreviated" href="mailto:gfx@lists.freedesktop.org">gfx@lists.freedesktop.org</a>
Cc: Nautiyal, Ankit K <a class="moz-txt-link-rfc2396E" href="mailto:ankit.k.nautiyal@intel.com">&lt;ankit.k.nautiyal@intel.com&gt;</a>; Shankar, Uma
<a class="moz-txt-link-rfc2396E" href="mailto:uma.shankar@intel.com">&lt;uma.shankar@intel.com&gt;</a>; <a class="moz-txt-link-abbreviated" href="mailto:dmitry.baryshkov@oss.qualcomm.com">dmitry.baryshkov@oss.qualcomm.com</a>; Murthy,
Arun R <a class="moz-txt-link-rfc2396E" href="mailto:arun.r.murthy@intel.com">&lt;arun.r.murthy@intel.com&gt;</a>; Nikula, Jani <a class="moz-txt-link-rfc2396E" href="mailto:jani.nikula@intel.com">&lt;jani.nikula@intel.com&gt;</a>;
<a class="moz-txt-link-abbreviated" href="mailto:harry.wentland@amd.com">harry.wentland@amd.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:siqueira@igalia.com">siqueira@igalia.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:alexander.deucher@amd.com">alexander.deucher@amd.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:christian.koenig@amd.com">christian.koenig@amd.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:airlied@gmail.com">airlied@gmail.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:simona@ffwll.ch">simona@ffwll.ch</a>; <a class="moz-txt-link-abbreviated" href="mailto:liviu.dudau@arm.com">liviu.dudau@arm.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:maarten.lankhorst@linux.intel.com">maarten.lankhorst@linux.intel.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:mripard@kernel.org">mripard@kernel.org</a>;
<a class="moz-txt-link-abbreviated" href="mailto:robin.clark@oss.qualcomm.com">robin.clark@oss.qualcomm.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:abhinav.kumar@linux.dev">abhinav.kumar@linux.dev</a>;
<a class="moz-txt-link-abbreviated" href="mailto:tzimmermann@suse.de">tzimmermann@suse.de</a>; <a class="moz-txt-link-abbreviated" href="mailto:sean@poorly.ru">sean@poorly.ru</a>; <a class="moz-txt-link-abbreviated" href="mailto:marijn.suijten@somainline.org">marijn.suijten@somainline.org</a>;
<a class="moz-txt-link-abbreviated" href="mailto:laurent.pinchart+renesas@ideasonboard.com">laurent.pinchart+renesas@ideasonboard.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:dave.stevenson@raspberrypi.com">dave.stevenson@raspberrypi.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:tomi.valkeinen+renesas@ideasonboard.com">tomi.valkeinen+renesas@ideasonboard.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:kieran.bingham+renesas@ideasonboard.com">kieran.bingham+renesas@ideasonboard.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:kernel-dev@igalia.com">kernel-dev@igalia.com</a>
Subject: Re: [v3,2/7] drm: writeback: Modify writeback init helpers

On 3/16/26 01:30, Suraj Kandpal wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">Now with drm_writeback_connector moved to drm_connector it makes
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">more
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">sense use drm_connector as an argument rather than
drm_writeback_connector. The writeback connector can easily be derived
from drm_connector.
</pre>
        </blockquote>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Hi John
First of all thanks for helping to move this series forward.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">So this patch and all five subsequent patches are basically the same search
and replace of base_conn-&gt;wb_conn to base_conn in the DRM level helper
functions, yes? I would add a little more explanation of why "it makes more
sense". Something like: "Some of the writeback helper functions require
access to the parent drm_connector object as well as the
drm_writeback_connector object itself. So, pass in the top level object and
traverse down rather than passing in the lower level object and traversing
back up. Even where such is not the case, update to use the top level object
for consistency across the interface."
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Sure will update the commit message.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
Also, there could be better consistency across these 'modify' patches.
First, the subject of patches 1-5 should be 'drm/writeback: ...' not
'drm: writeback: ...'. Then you have 'modify XXX helpers', 'modify XXX params'
and 'modify params for XXX'. 
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Sure will keep the subject consistent

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">It would be cleaner to pick a single variant and
use that for all the patches. Lastly, are the final two patches really
'drm/connector:'? The header file with the function declarations being
updated is drm_modeset_helper_vtables.h. Which would make the prefix
'drm/modeset'? Although, given that the declarations are specific to
writeback support, I would just stick with 'drm/writeback'
for all seven patches.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Sure will update the prefix for last two patches as well.
Although in regard to drm/writeback after grepping the git log it seems that
drm: writeback: is the correct prefix actually the correct wording would be more prevalent prefix. So I would like to keep that
the consistently across all my patches as well.</pre>
    </blockquote>
    Just because someone else got it wrong earlier doesn't mean we
    should continue to get it wrong ;).<br>
    <br>
    General consensus for DRM patches is "drm/xxx/yyy: zzzz" rather than
    'drm: xxx: yyy: zzz". As demonstrated:<br>
      git log --oneline | grep -E 'drm: [a-z\:\ ]+:' | wc -l<br>
      1607<br>
      git log --oneline | grep -E 'drm/[a-z\/]+:' | wc -l<br>
      67140<br>
    <br>
    Not sure if there is an official statement in the style guide about
    it though, and maybe it is just personal preference. So not a
    blocker from me, but personally, I would go with the majority on
    this one.<br>
    <br>
    John.<br>
    <br>
  </body>
</html>

--------------s0YQ9023fgdLmWWJR6PmzlKj--
