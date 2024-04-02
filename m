Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC63E895BBC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 20:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E02D10FF5A;
	Tue,  2 Apr 2024 18:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA33910FF5A;
 Tue,  2 Apr 2024 18:28:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2873557000765169016=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_fix_dis?=
 =?utf-8?q?play_param_dup_for_NULL_char_*_params?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Apr 2024 18:28:12 -0000
Message-ID: <171208249289.1155818.11786198049779191116@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240402155534.1788466-1-jani.nikula@intel.com>
In-Reply-To: <20240402155534.1788466-1-jani.nikula@intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2873557000765169016==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: fix display param dup for NULL char * params
URL   : https://patchwork.freedesktop.org/series/131949/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14516 -> Patchwork_131949v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131949v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131949v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/index.html

Participating hosts (37 -> 32)
------------------------------

  Additional (1): fi-cfl-8109u 
  Missing    (6): bat-dg1-7 fi-snb-2520m bat-dg2-11 fi-bsw-nick bat-jsl-1 bat-arls-3 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131949v1:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-x1275:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html
    - bat-adlp-11:        [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adlp-11/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adlp-11/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8109u:       NOTRUN -> [ABORT][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7567u:       [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
    - bat-adln-1:         [PASS][8] -> [ABORT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adln-1/igt@debugfs_test@read_all_entries.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adln-1/igt@debugfs_test@read_all_entries.html
    - fi-ivb-3770:        [PASS][10] -> [ABORT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-ivb-3770/igt@debugfs_test@read_all_entries.html
    - bat-mtlp-8:         [PASS][12] -> [ABORT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-mtlp-8/igt@debugfs_test@read_all_entries.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-mtlp-8/igt@debugfs_test@read_all_entries.html
    - fi-elk-e7500:       [PASS][14] -> [ABORT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-elk-e7500/igt@debugfs_test@read_all_entries.html
    - bat-dg2-8:          [PASS][16] -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html
    - fi-kbl-guc:         [PASS][18] -> [ABORT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-kbl-guc/igt@debugfs_test@read_all_entries.html
    - bat-adls-6:         [PASS][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adls-6/igt@debugfs_test@read_all_entries.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adls-6/igt@debugfs_test@read_all_entries.html
    - bat-adlm-1:         [PASS][22] -> [ABORT][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adlm-1/igt@debugfs_test@read_all_entries.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adlm-1/igt@debugfs_test@read_all_entries.html
    - fi-ilk-650:         [PASS][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-ilk-650/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-ilk-650/igt@debugfs_test@read_all_entries.html
    - fi-tgl-1115g4:      [PASS][26] -> [ABORT][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
    - bat-arls-1:         [PASS][28] -> [ABORT][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-arls-1/igt@debugfs_test@read_all_entries.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-arls-1/igt@debugfs_test@read_all_entries.html
    - fi-cfl-guc:         [PASS][30] -> [ABORT][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-cfl-guc/igt@debugfs_test@read_all_entries.html
    - bat-mtlp-6:         [PASS][32] -> [ABORT][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-mtlp-6/igt@debugfs_test@read_all_entries.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-mtlp-6/igt@debugfs_test@read_all_entries.html
    - bat-rpls-3:         [PASS][34] -> [ABORT][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-rpls-3/igt@debugfs_test@read_all_entries.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-rpls-3/igt@debugfs_test@read_all_entries.html
    - fi-pnv-d510:        [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
    - fi-glk-j4005:       [PASS][38] -> [ABORT][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-glk-j4005/igt@debugfs_test@read_all_entries.html
    - bat-adlp-9:         [PASS][40] -> [ABORT][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adlp-9/igt@debugfs_test@read_all_entries.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adlp-9/igt@debugfs_test@read_all_entries.html
    - fi-cfl-8700k:       [PASS][42] -> [ABORT][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html
    - bat-dg2-14:         [PASS][44] -> [ABORT][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-14/igt@debugfs_test@read_all_entries.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-dg2-14/igt@debugfs_test@read_all_entries.html
    - bat-kbl-2:          [PASS][46] -> [ABORT][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-kbl-2/igt@debugfs_test@read_all_entries.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-kbl-2/igt@debugfs_test@read_all_entries.html
    - bat-rplp-1:         [PASS][48] -> [ABORT][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-rplp-1/igt@debugfs_test@read_all_entries.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-rplp-1/igt@debugfs_test@read_all_entries.html
    - fi-rkl-11600:       [PASS][50] -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-rkl-11600/igt@debugfs_test@read_all_entries.html
    - bat-jsl-3:          [PASS][52] -> [ABORT][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-jsl-3/igt@debugfs_test@read_all_entries.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-jsl-3/igt@debugfs_test@read_all_entries.html
    - bat-dg2-9:          [PASS][54] -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-9/igt@debugfs_test@read_all_entries.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-arls-4}:       [PASS][56] -> [ABORT][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-arls-4/igt@debugfs_test@read_all_entries.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-arls-4/igt@debugfs_test@read_all_entries.html
    - {bat-mtlp-9}:       [PASS][58] -> [ABORT][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-mtlp-9/igt@debugfs_test@read_all_entries.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-mtlp-9/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_131949v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-13:         [DMESG-WARN][60] ([i915#10651]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10651]: https://gitlab.freedesktop.org/drm/intel/issues/10651


Build changes
-------------

  * Linux: CI_DRM_14516 -> Patchwork_131949v1

  CI-20190529: 20190529
  CI_DRM_14516: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7796: 2cfed18f6aa776c1593d7cc328d23225dd61bdf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131949v1: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e5e94c472551 drm/i915/display: fix display param dup for NULL char * params

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/index.html

--===============2873557000765169016==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/display: fix display param dup for NULL char * params</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131949/">https://patchwork.freedesktop.org/series/131949/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14516 -&gt; Patchwork_131949v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131949v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131949v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/index.html</p>
<h2>Participating hosts (37 -&gt; 32)</h2>
<p>Additional (1): fi-cfl-8109u <br />
  Missing    (6): bat-dg1-7 fi-snb-2520m bat-dg2-11 fi-bsw-nick bat-jsl-1 bat-arls-3 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131949v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-kbl-x1275/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adlp-11/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adlp-11/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adln-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adln-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-ivb-3770/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-mtlp-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-mtlp-8/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-elk-e7500/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-kbl-guc/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adls-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adls-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adlm-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adlm-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-ilk-650/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-ilk-650/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-arls-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-arls-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-cfl-guc/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-mtlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-mtlp-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-rpls-3/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-rpls-3/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-glk-j4005/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-glk-j4005/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-adlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-adlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-cfl-8700k/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-14/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-dg2-14/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-kbl-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-kbl-2/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-rplp-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-rplp-1/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/fi-rkl-11600/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-jsl-3/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-jsl-3/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-arls-4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-arls-4/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-mtlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-mtlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131949v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium_hpd@common-hpd-after-suspend:<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14516/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10651">i915#10651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131949v1/bat-dg2-13/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14516 -&gt; Patchwork_131949v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14516: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7796: 2cfed18f6aa776c1593d7cc328d23225dd61bdf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131949v1: 5100fcc57dc5d45b246a0aeb068f4f8062d29b09 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e5e94c472551 drm/i915/display: fix display param dup for NULL char * params</p>

</body>
</html>

--===============2873557000765169016==--
