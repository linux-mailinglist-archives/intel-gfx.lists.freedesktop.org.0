Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2247B559A5E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 15:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4923D10F145;
	Fri, 24 Jun 2022 13:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9225310F145
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 13:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656077548; x=1687613548;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=Wl5lOIKsqh089Q3KjOX3BX5bX1HwOYq65QCjhpszuwA=;
 b=NeU2qQ4YFV68xyEzEh0UJsDXgi8kSTarcOGfPmdW1xpK0LRVOJsEW43U
 VNQyNvnzM44h7LZreM7cXMULM6Rqvde9RYC8lrrpvksDj6PmhQlKDO8uy
 WKXTOq3lvpV6YPIiylp1K+DpSpSDiMb1ESwFVaZYVylu4dZAxUnHsBPsw
 lrM+BujEqCY6QkQpDEtz8pk5+cVOTkGPYTK6pTpdUUZu2Y5uYhVMlBy+u
 +IJcLRoqGCS8yamiaOu9k4lrWNfxbmOGI7fEOGPmI3yYlKijoTjg3J4b3
 UQ8FfUEFqczsPy71oh5cQQuozBvwM5BkgrP+4REGQNTk6fSixN6rSw141 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="281734869"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; 
 d="scan'208,217";a="281734869"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 06:32:28 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; 
 d="scan'208,217";a="645271504"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.227])
 ([10.252.61.227])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 06:32:26 -0700
Content-Type: multipart/alternative;
 boundary="------------3nPBgydhTgD3k8UxY0aprM4E"
Message-ID: <dfa1c064-4585-333e-b1f0-e157054a0245@linux.intel.com>
Date: Fri, 24 Jun 2022 15:32:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20220624110821.29190-1-nirmoy.das@intel.com>
 <165607496391.16789.8272193234017125984@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <165607496391.16789.8272193234017125984@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_a_lockdep_warning_at_error_capture_=28rev2=29?=
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

This is a multi-part message in MIME format.
--------------3nPBgydhTgD3k8UxY0aprM4E
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 6/24/2022 2:49 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: Fix a lockdep warning at error capture (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/105291/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11803 -> Patchwork_105291v2
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_105291v2 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105291v2, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/index.html
>
>
>     Participating hosts (36 -> 37)
>
> Additional (4): fi-kbl-soraka bat-adlm-1 fi-bdw-5557u bat-adlp-6
> Missing (3): bat-dg2-8 fi-bdw-samus fi-pnv-d510
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_105291v2:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
>
>       o fi-bsw-kefka: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html>
>

This is not related and the test is failing without the patch as well 
see: https://intel-gfx-ci.01.org/tree/drm-tip/fi-bsw-kefka.html


Nirmoy

>  *
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@i915_module_load@reload:
>
>       o {bat-adln-1}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-adln-1/igt@i915_module_load@reload.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-adln-1/igt@i915_module_load@reload.html>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o {bat-adlm-1}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-adlm-1/igt@i915_selftest@live@hangcheck.html>
>  *
>
>     igt@kms_pipe_crc_basic@hang-read-crc:
>
>       o {bat-adlm-1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html>
>         +8 similar issues
>
>
>     Known issues
>
> Here are the changes found in Patchwork_105291v2 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_gttfill@basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +8
>         similar issues
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>      o
>
>         fi-apl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-apl-guc/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>
>      o
>
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>      o
>
>         fi-hsw-g3258: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>
>      o
>
>         fi-bdw-5557u: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921 <https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>
>      o
>
>         bat-dg1-6: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>         (i915#4494
>         <https://gitlab.freedesktop.org/drm/intel/issues/4494> /
>         i915#4957 <https://gitlab.freedesktop.org/drm/intel/issues/4957>)
>
>  *
>
>     igt@i915_suspend@basic-s2idle-without-i915:
>
>       o bat-dg1-6: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html>
>         (i915#6011 <https://gitlab.freedesktop.org/drm/intel/issues/6011>)
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>      o
>
>         fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>
>      o
>
>         fi-snb-2600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>
>  *
>
>     igt@kms_chamelium@dp-crc-fast:
>
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-crc-fast:
>
>       o fi-apl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-hpd-fast:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
>  *
>
>     igt@kms_flip@basic-plain-flip@a-edp1:
>
>       o fi-tgl-u2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html>
>         (i915#402
>         <https://gitlab.freedesktop.org/drm/intel/issues/402>) +1
>         similar issue
>  *
>
>     igt@kms_force_connector_basic@force-connector-state:
>
>       o fi-apl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-apl-guc/igt@kms_force_connector_basic@force-connector-state.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +13
>         similar issues
>  *
>
>     igt@kms_psr@primary_page_flip:
>
>       o fi-bdw-5557u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-bdw-5557u/igt@kms_psr@primary_page_flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +13
>         similar issues
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         fi-skl-guc: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-skl-guc/igt@runner@aborted.html>
>         (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>      o
>
>         fi-hsw-g3258: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-hsw-g3258/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#6246 <https://gitlab.freedesktop.org/drm/intel/issues/6246>)
>
>
>         Possible fixes
>
>  *
>
>     igt@debugfs_test@read_all_entries:
>
>       o fi-apl-guc: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-apl-guc/igt@debugfs_test@read_all_entries.html>
>         (i915#1610
>         <https://gitlab.freedesktop.org/drm/intel/issues/1610> /
>         i915#5595
>         <https://gitlab.freedesktop.org/drm/intel/issues/5595>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-apl-guc/igt@debugfs_test@read_all_entries.html>
>  *
>
>     igt@i915_selftest@live@gt_engines:
>
>       o bat-dg1-6: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-dg1-6/igt@i915_selftest@live@gt_engines.html>
>         (i915#4418
>         <https://gitlab.freedesktop.org/drm/intel/issues/4418>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-dg1-6/igt@i915_selftest@live@gt_engines.html>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>      o
>
>         fi-hsw-4770: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         (i915#3303
>         <https://gitlab.freedesktop.org/drm/intel/issues/3303> /
>         i915#4785
>         <https://gitlab.freedesktop.org/drm/intel/issues/4785>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>
>      o
>
>         fi-snb-2600: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921
>         <https://gitlab.freedesktop.org/drm/intel/issues/3921>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>
>  *
>
>     igt@kms_busy@basic@modeset:
>
>       o {bat-adln-1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-adln-1/igt@kms_busy@basic@modeset.html>
>         (i915#3576
>         <https://gitlab.freedesktop.org/drm/intel/issues/3576>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-adln-1/igt@kms_busy@basic@modeset.html>
>  *
>
>     igt@kms_flip@basic-flip-vs-dpms@a-edp1:
>
>       o fi-tgl-u2: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html>
>         (i915#402
>         <https://gitlab.freedesktop.org/drm/intel/issues/402>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11803 -> Patchwork_105291v2
>
> CI-20190529: 20190529
> CI_DRM_11803: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6541: 02153f109bd422d93cfce7f5aa9d7b0e22fab13c @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105291v2: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 731487d4ddf7 drm/i915: Fix a lockdep warning at error capture
>
--------------3nPBgydhTgD3k8UxY0aprM4E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/24/2022 2:49 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:165607496391.16789.8272193234017125984@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915: Fix a lockdep warning at error capture (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/105291/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/105291/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11803 -&gt;
        Patchwork_105291v2</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_105291v2
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_105291v2, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/index.html</a></p>
      <h2>Participating hosts (36 -&gt; 37)</h2>
      <p>Additional (4): fi-kbl-soraka bat-adlm-1 fi-bdw-5557u
        bat-adlp-6 <br>
        Missing (3): bat-dg2-8 fi-bdw-samus fi-pnv-d510 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_105291v2:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
          <ul>
            <li>fi-bsw-kefka: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html"
                moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p><br>
    </p>
    <p>This is not related and the test is failing without the patch as
      well see:
      <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/fi-bsw-kefka.html">https://intel-gfx-ci.01.org/tree/drm-tip/fi-bsw-kefka.html</a></p>
    <p><br>
    </p>
    <p>Nirmoy<br>
    </p>
    <blockquote type="cite"
      cite="mid:165607496391.16789.8272193234017125984@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@i915_module_load@reload:</p>
          <ul>
            <li>{bat-adln-1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-adln-1/igt@i915_module_load@reload.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-adln-1/igt@i915_module_load@reload.html"
                moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>{bat-adlm-1}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-adlm-1/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
          <ul>
            <li>{bat-adlm-1}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html"
                moz-do-not-send="true">SKIP</a> +8 similar issues</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_105291v2 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_gttfill@basic:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>
              <p>fi-apl-guc: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-apl-guc/igt@gem_lmem_swapping@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                  moz-do-not-send="true">i915#4613</a>) +3 similar
                issues</p>
            </li>
            <li>
              <p>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                  moz-do-not-send="true">i915#4613</a>) +3 similar
                issues</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1886"
                moz-do-not-send="true">i915#1886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>
              <p>fi-hsw-g3258: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">INCOMPLETE</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4785"
                  moz-do-not-send="true">i915#4785</a>)</p>
            </li>
            <li>
              <p>fi-bdw-5557u: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">INCOMPLETE</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3921"
                  moz-do-not-send="true">i915#3921</a>)</p>
            </li>
            <li>
              <p>bat-dg1-6: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">DMESG-FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4494"
                  moz-do-not-send="true">i915#4494</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4957"
                  moz-do-not-send="true">i915#4957</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s2idle-without-i915:</p>
          <ul>
            <li>bat-dg1-6: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6011"
                moz-do-not-send="true">i915#6011</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>
              <p>fi-hsw-4770: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                  moz-do-not-send="true">fdo#111827</a>)</p>
            </li>
            <li>
              <p>fi-snb-2600: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                  moz-do-not-send="true">fdo#111827</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-crc-fast:</p>
          <ul>
            <li>fi-bdw-5557u: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-crc-fast:</p>
          <ul>
            <li>fi-apl-guc: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-hpd-fast:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
          <ul>
            <li>fi-tgl-u2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-tgl-u2/igt@kms_flip@basic-plain-flip@a-edp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/402"
                moz-do-not-send="true">i915#402</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-connector-state:</p>
          <ul>
            <li>fi-apl-guc: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-apl-guc/igt@kms_force_connector_basic@force-connector-state.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +13 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@primary_page_flip:</p>
          <ul>
            <li>fi-bdw-5557u: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-bdw-5557u/igt@kms_psr@primary_page_flip.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +13 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>fi-skl-guc: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-skl-guc/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                  moz-do-not-send="true">i915#4312</a>)</p>
            </li>
            <li>
              <p>fi-hsw-g3258: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-hsw-g3258/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                  moz-do-not-send="true">i915#4312</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/6246"
                  moz-do-not-send="true">i915#6246</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@read_all_entries:</p>
          <ul>
            <li>fi-apl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-apl-guc/igt@debugfs_test@read_all_entries.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1610"
                moz-do-not-send="true">i915#1610</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5595"
                moz-do-not-send="true">i915#5595</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-apl-guc/igt@debugfs_test@read_all_entries.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_engines:</p>
          <ul>
            <li>bat-dg1-6: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-dg1-6/igt@i915_selftest@live@gt_engines.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4418"
                moz-do-not-send="true">i915#4418</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-dg1-6/igt@i915_selftest@live@gt_engines.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>
              <p>fi-hsw-4770: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">INCOMPLETE</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3303"
                  moz-do-not-send="true">i915#3303</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4785"
                  moz-do-not-send="true">i915#4785</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>fi-snb-2600: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-snb-2600/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">INCOMPLETE</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3921"
                  moz-do-not-send="true">i915#3921</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_busy@basic@modeset:</p>
          <ul>
            <li>{bat-adln-1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/bat-adln-1/igt@kms_busy@basic@modeset.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3576"
                moz-do-not-send="true">i915#3576</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/bat-adln-1/igt@kms_busy@basic@modeset.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-dpms@a-edp1:</p>
          <ul>
            <li>fi-tgl-u2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/402"
                moz-do-not-send="true">i915#402</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105291v2/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11803 -&gt; Patchwork_105291v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11803: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6541: 02153f109bd422d93cfce7f5aa9d7b0e22fab13c @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_105291v2: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>731487d4ddf7 drm/i915: Fix a lockdep warning at error capture</p>
    </blockquote>
  </body>
</html>

--------------3nPBgydhTgD3k8UxY0aprM4E--
