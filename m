Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A1E33F993
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 20:54:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596876E843;
	Wed, 17 Mar 2021 19:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E55696E029;
 Wed, 17 Mar 2021 19:54:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCFCAA0BCB;
 Wed, 17 Mar 2021 19:54:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 17 Mar 2021 19:54:01 -0000
Message-ID: <161601084187.17368.645839459925695268@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615998927.git.jani.nikula@intel.com>
In-Reply-To: <cover.1615998927.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_vbt_child_device_rework_=28rev2=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0985879925=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0985879925==
Content-Type: multipart/alternative;
 boundary="===============5627102030778030056=="

--===============5627102030778030056==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: vbt child device rework (rev2)
URL   : https://patchwork.freedesktop.org/series/87165/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9866 -> Patchwork_19801
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/index.html

Known issues
------------

  Here are the changes found in Patchwork_19801 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][1] -> [TIMEOUT][2] ([i915#3145])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9866/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][3] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][4] ([i915#3159])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@client:
    - fi-bsw-kefka:       [DMESG-FAIL][5] ([i915#3047]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9866/fi-bsw-kefka/igt@i915_selftest@live@client.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-bsw-kefka/igt@i915_selftest@live@client.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][7] ([i915#3143]) -> [DMESG-WARN][8] ([i915#1982] / [i915#3143])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9866/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#3143]: https://gitlab.freedesktop.org/drm/intel/issues/3143
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159


Participating hosts (44 -> 40)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9866 -> Patchwork_19801

  CI-20190529: 20190529
  CI_DRM_9866: 91b8b76369859b5bcb5001060cfc678b98dff1cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6034: b3eff02d5400944dd7b14896037bc9bbf362343e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19801: 4dd08d351db58c50f55d38a55b88144273ccc7cd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4dd08d351db5 drm/i915/bios: add intel_bios_encoder_data to encoder, use for iboost
edab5cc69012 drm/i915/bios: start using intel_bios_encoder_data for Type-C USB and TBT
0572ca553f54 drm/i915/bios: start using the intel_bios_encoder_data directly
bb0ab648eab8 drm/i915/bios: save a higher level pointer in ddi_vbt_port_info[]
bdc668d9ecd7 drm/i915/bios: add helper functions to check output support
361ff254ba49 drm/i915/bios: add i915 backpointer to intel_bios_encoder_data
1f49d68868df drm/i915/bios: rename display_device_data to intel_bios_encoder_data
89b916034893 drm/i915/bios: create fake child devices on missing VBT
8cf91786b8f3 drm/i915/bios: limit default outputs to ports A through F
860230c30c82 drm/i915/bios: limit default outputs by platform on missing VBT
cebf548656f1 drm/i915/bios: move aux ch and ddc checks at a lower level
5fa160ffef8b drm/i915/bios: reduce indent in sanitize_ddc_pin and sanitize_aux_ch
9b08439f2c5c drm/i915/bios: store bdb version in i915
ef7d9eda99d9 drm/i915/bios: mass convert dev_priv to i915

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/index.html

--===============5627102030778030056==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: vbt child device rework (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87165/">https://patchwork.freedesktop.org/series/87165/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9866 -&gt; Patchwork_19801</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19801 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9866/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@client:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9866/fi-bsw-kefka/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-bsw-kefka/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9866/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19801/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9866 -&gt; Patchwork_19801</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9866: 91b8b76369859b5bcb5001060cfc678b98dff1cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6034: b3eff02d5400944dd7b14896037bc9bbf362343e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19801: 4dd08d351db58c50f55d38a55b88144273ccc7cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4dd08d351db5 drm/i915/bios: add intel_bios_encoder_data to encoder, use for iboost<br />
edab5cc69012 drm/i915/bios: start using intel_bios_encoder_data for Type-C USB and TBT<br />
0572ca553f54 drm/i915/bios: start using the intel_bios_encoder_data directly<br />
bb0ab648eab8 drm/i915/bios: save a higher level pointer in ddi_vbt_port_info[]<br />
bdc668d9ecd7 drm/i915/bios: add helper functions to check output support<br />
361ff254ba49 drm/i915/bios: add i915 backpointer to intel_bios_encoder_data<br />
1f49d68868df drm/i915/bios: rename display_device_data to intel_bios_encoder_data<br />
89b916034893 drm/i915/bios: create fake child devices on missing VBT<br />
8cf91786b8f3 drm/i915/bios: limit default outputs to ports A through F<br />
860230c30c82 drm/i915/bios: limit default outputs by platform on missing VBT<br />
cebf548656f1 drm/i915/bios: move aux ch and ddc checks at a lower level<br />
5fa160ffef8b drm/i915/bios: reduce indent in sanitize_ddc_pin and sanitize_aux_ch<br />
9b08439f2c5c drm/i915/bios: store bdb version in i915<br />
ef7d9eda99d9 drm/i915/bios: mass convert dev_priv to i915</p>

</body>
</html>

--===============5627102030778030056==--

--===============0985879925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0985879925==--
