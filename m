Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mP+mDC551mnxFggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:50:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1FD3BE7D5
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D047910E69D;
	Wed,  8 Apr 2026 15:50:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKN35jNY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4F410E69B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 15:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775663402; x=1807199402;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=rPZhaUrhyGgxj2Kf2XmtiOvLIzNPQ+RGyqpP56pXWQU=;
 b=iKN35jNYvypRGZ63yHtJHNrkXuxW2+fZ13SppVWnKLu2VTd9936hcWjr
 E2Dej+jzsqgWxjzify56KiyHtgQrYZdVzsJk3lVhmTCZWKzfbEmvn+VQS
 KsHtArdAwSbJ1WfPcot013DGfjPf8cfKyEgPaaip2NM8Sk69k8sGG7FD4
 fDmMOKddMNsIANC3UR0GUVKP8/js6j+M87LX74UF6apfpSp2by0ySB8hj
 n/5i3fIs+YHRXHpLtDP9JBNygLh4C7CR7Tl14shVCFtGVznWmb6ETfa+K
 RSZFby4oLBC3ibAgQJnAgc51o8tLpoAtUQ/0bI1GioIfnL9yfmSdBrAhY g==;
X-CSE-ConnectionGUID: IQQdZWzMRL6DgBNh+Vyq/A==
X-CSE-MsgGUID: wzUduAXNSSymcF1ymVfMMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="94233026"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208,217";a="94233026"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:50:01 -0700
X-CSE-ConnectionGUID: gP9/NOT5RxSyYPKyhXtGHQ==
X-CSE-MsgGUID: 7yHCSmBNQDGRqRpSPH5XtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; 
 d="scan'208,217";a="223742288"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO [10.245.245.108])
 ([10.245.245.108])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:50:01 -0700
Content-Type: multipart/alternative;
 boundary="------------R0Tq0GvnscqGqTLdPlU8ykIC"
Message-ID: <dcaf9a16-a462-4b04-8b7b-29f03e4ea523@intel.com>
Date: Wed, 8 Apr 2026 17:49:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/?=
 =?UTF-8?Q?display=3A_stop_using_the_configurable_fence_timeout_=28rev2=29?=
To: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <20251112155612.8320-1-jani.nikula@intel.com>
 <176310680567.54560.8073003092226406962@10055242dc62>
 <3692f126b907c442d76a93957073660d7d9ffd12@intel.com>
 <aSXmTMWeOXjnYNSB@intel.com> <dc4d04b4-2d29-4a19-8d11-58051673e0a6@intel.com>
 <44f9b69d23678458f0ab3ff4bec5c45cb05535b8@intel.com>
 <4d0e3bfe-d3e3-43fb-8964-b9647e914a61@intel.com>
 <ac7ffc50c676979359a7363374030beb61d6cfff@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@intel.com>
In-Reply-To: <ac7ffc50c676979359a7363374030beb61d6cfff@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER(0.00)[maarten.lankhorst@intel.com,intel-gfx-bounces@lists.freedesktop.org]
X-Rspamd-Queue-Id: BE1FD3BE7D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.
--------------R0Tq0GvnscqGqTLdPlU8ykIC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hey,

Den 2026-04-08 kl. 17:14, skrev Jani Nikula:
> On Thu, 02 Apr 2026, Maarten Lankhorst <maarten.lankhorst@intel.com> wrote:
>> Den 2026-04-02 kl. 11:40, skrev Jani Nikula:
>>> On Wed, 03 Dec 2025, Maarten Lankhorst <maarten.lankhorst@intel.com> wrote:
>>>> Hey,
>>>>
>>>> Den 2025-11-25 kl. 18:24, skrev Ville Syrjälä:
>>>>> On Tue, Nov 25, 2025 at 03:55:02PM +0200, Jani Nikula wrote:
>>>>>> Maarten, Ville, any ideas what to do about these?
>>>>> Looks like we need the timeout to unbreak the modeset vs. reset
>>>>> deadlock in a timely fashion.
>>>>>
>>>>> I'm not where we signal/error the fences the modeset is waiting
>>>>> for, but I guess that must be happening after the whole reset
>>>>> sequence is done. Doing that earlier would seem like another
>>>>> solution, but dunno what other fallout it would have.
>>>> intel_prepare_plane_fb() adds all dma-resv fences for old_obj on
>>>> intel_crtc_needs_modeset(), does it change anything if we remove that,
>>>> at least for the GPU reset commit?
>>> We dropped the ball here a bit, and I'm a bit clueless as to what to
>>> do. Except we'll need to unify i915 and xe here somehow.
>>>
>>> Alternatives:
>>>
>>> - Remove the timeout from i915 (the patch at hand), and fix the fallout
>>>   somehow.
>>>
>>> - Add the timeout to xe, and fix the fallout, if any.
>>>
>>> - Add the timeout to display parent interface, which is a bit meh.
>>>
>>>
>> The mention in the commit is old_obj needs to be wait for flip_done, I do not believe this
>> is the case that it was ever used in hardware supported by xe, so for xe the wait can be dropped entirely.
>>
>> Is this required for i915 still? In that case you can just eliminate
>> the wait only for xe.
> Trouble is, doing things differently basically means using the parent
> interface no matter what.
>
The specific wait mentioned in intel_plane_prepare_plane_fb is only
used in pre-universal plane overlay support, and in xf86-video-intel
driver on < gen9. (source:
intel_skylake_info specifies gen = 0110,
and sna_wait_for_scanline() returns false for gen >= 0110 on sna.)

Adding a < GEN9 check would be sufficient, and not driver specific.

Kind regards,
~Maarten Lankhorst
--------------R0Tq0GvnscqGqTLdPlU8ykIC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <font face="monospace">Hey,</font><br>
    <br>
    <div class="moz-cite-prefix">Den 2026-04-08 kl. 17:14, skrev Jani
      Nikula:<br>
    </div>
    <blockquote type="cite"
      cite="mid:ac7ffc50c676979359a7363374030beb61d6cfff@intel.com">
      <pre wrap="" class="moz-quote-pre">On Thu, 02 Apr 2026, Maarten Lankhorst <a class="moz-txt-link-rfc2396E" href="mailto:maarten.lankhorst@intel.com">&lt;maarten.lankhorst@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">Den 2026-04-02 kl. 11:40, skrev Jani Nikula:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">On Wed, 03 Dec 2025, Maarten Lankhorst <a class="moz-txt-link-rfc2396E" href="mailto:maarten.lankhorst@intel.com">&lt;maarten.lankhorst@intel.com&gt;</a> wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="" class="moz-quote-pre">Hey,

Den 2025-11-25 kl. 18:24, skrev Ville Syrjälä:
</pre>
            <blockquote type="cite">
              <pre wrap="" class="moz-quote-pre">On Tue, Nov 25, 2025 at 03:55:02PM +0200, Jani Nikula wrote:
</pre>
              <blockquote type="cite">
                <pre wrap="" class="moz-quote-pre">Maarten, Ville, any ideas what to do about these?
</pre>
              </blockquote>
              <pre wrap="" class="moz-quote-pre">Looks like we need the timeout to unbreak the modeset vs. reset
deadlock in a timely fashion.

I'm not where we signal/error the fences the modeset is waiting
for, but I guess that must be happening after the whole reset
sequence is done. Doing that earlier would seem like another
solution, but dunno what other fallout it would have.
</pre>
            </blockquote>
            <pre wrap="" class="moz-quote-pre">intel_prepare_plane_fb() adds all dma-resv fences for old_obj on
intel_crtc_needs_modeset(), does it change anything if we remove that,
at least for the GPU reset commit?
</pre>
          </blockquote>
          <pre wrap="" class="moz-quote-pre">We dropped the ball here a bit, and I'm a bit clueless as to what to
do. Except we'll need to unify i915 and xe here somehow.

Alternatives:

- Remove the timeout from i915 (the patch at hand), and fix the fallout
  somehow.

- Add the timeout to xe, and fix the fallout, if any.

- Add the timeout to display parent interface, which is a bit meh.


</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">The mention in the commit is old_obj needs to be wait for flip_done, I do not believe this
is the case that it was ever used in hardware supported by xe, so for xe the wait can be dropped entirely.

Is this required for i915 still? In that case you can just eliminate
the wait only for xe.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Trouble is, doing things differently basically means using the parent
interface no matter what.

</pre>
    </blockquote>
    The specific wait mentioned in intel_plane_prepare_plane_fb is only<br>
    used in pre-universal plane overlay support, and in xf86-video-intel<br>
    driver on &lt; gen9. (source:<br>
    intel_skylake_info specifies gen = 0110,<br>
    and sna_wait_for_scanline() returns false for gen &gt;= 0110 on
    sna.)<br>
    <br>
    Adding a &lt; GEN9 check would be sufficient, and not driver
    specific.<br>
    <br>
    Kind regards,<br>
    ~Maarten Lankhorst
  </body>
</html>

--------------R0Tq0GvnscqGqTLdPlU8ykIC--
