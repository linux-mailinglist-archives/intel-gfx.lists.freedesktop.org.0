Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D219DEE3
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 09:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F55B89895;
	Tue, 27 Aug 2019 07:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D619889895
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 07:39:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 00:39:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; 
 d="scan'208,217";a="185211044"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.121.53])
 ([10.66.121.53])
 by orsmga006.jf.intel.com with ESMTP; 27 Aug 2019 00:39:24 -0700
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <1566887370-21780-1-git-send-email-ankit.k.nautiyal@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <da59ceaa-56a1-04ea-4ae9-05e2e2350d96@intel.com>
Date: Tue, 27 Aug 2019 13:09:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566887370-21780-1-git-send-email-ankit.k.nautiyal@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prune 2560x2880 mode for 5K tiled
 dual DP monitors
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============1960956465=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1960956465==
Content-Type: multipart/alternative;
 boundary="------------D5B501BFE904DB427F1D8C0E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D5B501BFE904DB427F1D8C0E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Ankit,

On 8/27/2019 11:59 AM, Nautiyal, Ankit K wrote:
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
> Currently, the transcoder port sync feature is not available, due to
> which the 5K-tiled dual DP monitors experience corruption when
> 2560x2880 mode is applied for both of the tiled DP connectors.
> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=97244
>
> There is a patch series to enable transcode port sync feature for
> tiled display for ICL+, which is under review:
> https://patchwork.kernel.org/project/intel-gfx/list/?series=137339
>
> For the older platforms, we need to remove the 2560x2880 mode to avoid
> a possibility of userspace choosing 2560x2880 mode for both tiled
> displays, resulting in corruption.
>
> This patch prunes 2560x2880 mode for one of the tiled DP connector.
> Since both the tiled DP connectors have different tile_h_loc and
> tile_v_loc, the tiled connector with tile_h_loc and tile_v_loc as '0',
> is chosen, for which the given resolution is removed.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> CC: Manasi Navare <manasi.d.navare@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5c45a3b..aa43a3b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -564,6 +564,17 @@ intel_dp_mode_valid(struct drm_connector *connector,
>   	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
>   		return MODE_H_ILLEGAL;
>   
> +	/*
> +	 * For 5K tiled dual DP monitors, dual-DP sync is not yet supported.
> +	 * This results in display sync issues, when both tiled connectors run
> +	 * on 2560x2880 resolution. Therefore prune the 2560x2880 mode on one
> +	 * of the tiled connector, to avoid such a case.
> +	 */
> +	if (connector->has_tile &&
> +	    (connector->tile_h_loc == 0 && connector->tile_v_loc == 0) &&
> +	    (mode->hdisplay == 2560 && mode->vdisplay == 2880))

Shouldn't this be for >= 2560/2880 than == ? Also, do we want 
(mode->hdisplay >= 2560 *||* mode->vdisplay >= 2880 )

- Shashank

> +		return MODE_PANEL;
> +
>   	return MODE_OK;
>   }
>   

--------------D5B501BFE904DB427F1D8C0E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Ankit, <br>
    </p>
    <div class="moz-cite-prefix">On 8/27/2019 11:59 AM, Nautiyal, Ankit
      K wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1566887370-21780-1-git-send-email-ankit.k.nautiyal@intel.com">
      <pre class="moz-quote-pre" wrap="">From: Ankit Nautiyal <a class="moz-txt-link-rfc2396E" href="mailto:ankit.k.nautiyal@intel.com">&lt;ankit.k.nautiyal@intel.com&gt;</a>

Currently, the transcoder port sync feature is not available, due to
which the 5K-tiled dual DP monitors experience corruption when
2560x2880 mode is applied for both of the tiled DP connectors.
Bugzilla: <a class="moz-txt-link-freetext" href="https://bugs.freedesktop.org/show_bug.cgi?id=97244">https://bugs.freedesktop.org/show_bug.cgi?id=97244</a>

There is a patch series to enable transcode port sync feature for
tiled display for ICL+, which is under review:
<a class="moz-txt-link-freetext" href="https://patchwork.kernel.org/project/intel-gfx/list/?series=137339">https://patchwork.kernel.org/project/intel-gfx/list/?series=137339</a>

For the older platforms, we need to remove the 2560x2880 mode to avoid
a possibility of userspace choosing 2560x2880 mode for both tiled
displays, resulting in corruption.

This patch prunes 2560x2880 mode for one of the tiled DP connector.
Since both the tiled DP connectors have different tile_h_loc and
tile_v_loc, the tiled connector with tile_h_loc and tile_v_loc as '0',
is chosen, for which the given resolution is removed.

Signed-off-by: Ankit Nautiyal <a class="moz-txt-link-rfc2396E" href="mailto:ankit.k.nautiyal@intel.com">&lt;ankit.k.nautiyal@intel.com&gt;</a>
CC: Manasi Navare <a class="moz-txt-link-rfc2396E" href="mailto:manasi.d.navare@intel.com">&lt;manasi.d.navare@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5c45a3b..aa43a3b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -564,6 +564,17 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (mode-&gt;flags &amp; DRM_MODE_FLAG_DBLCLK)
 		return MODE_H_ILLEGAL;
 
+	/*
+	 * For 5K tiled dual DP monitors, dual-DP sync is not yet supported.
+	 * This results in display sync issues, when both tiled connectors run
+	 * on 2560x2880 resolution. Therefore prune the 2560x2880 mode on one
+	 * of the tiled connector, to avoid such a case.
+	 */
+	if (connector-&gt;has_tile &amp;&amp;
+	    (connector-&gt;tile_h_loc == 0 &amp;&amp; connector-&gt;tile_v_loc == 0) &amp;&amp;
+	    (mode-&gt;hdisplay == 2560 &amp;&amp; mode-&gt;vdisplay == 2880))</pre>
    </blockquote>
    <p>Shouldn't this be for &gt;= 2560/2880 than == ? Also, do we want
      (mode-&gt;hdisplay &gt;= 2560 <b>||</b> mode-&gt;vdisplay &gt;=
      2880
      )</p>
    <p>- Shashank<br>
    </p>
    <blockquote type="cite"
      cite="mid:1566887370-21780-1-git-send-email-ankit.k.nautiyal@intel.com">
      <pre class="moz-quote-pre" wrap="">
+		return MODE_PANEL;
+
 	return MODE_OK;
 }
 
</pre>
    </blockquote>
  </body>
</html>

--------------D5B501BFE904DB427F1D8C0E--

--===============1960956465==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1960956465==--
