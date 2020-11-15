Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 521F92B39C2
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 23:00:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44E189C3B;
	Sun, 15 Nov 2020 22:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DAEA589C27;
 Sun, 15 Nov 2020 22:00:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2DE1A8169;
 Sun, 15 Nov 2020 22:00:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Sun, 15 Nov 2020 22:00:32 -0000
Message-ID: <160547763283.9576.18427972959115775265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201115210815.5272-1-sean.z.huang@intel.com>
In-Reply-To: <20201115210815.5272-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/27=5D_drm/i915/pxp=3A_Introduce_Intel_P?=
 =?utf-8?q?XP_component?=
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
Content-Type: multipart/mixed; boundary="===============0519885287=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0519885287==
Content-Type: multipart/alternative;
 boundary="===============9170458530611492659=="

--===============9170458530611492659==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/27] drm/i915/pxp: Introduce Intel PXP component
URL   : https://patchwork.freedesktop.org/series/83863/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9328 -> Patchwork_18910
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18910 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18910, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18910:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9328/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9328/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9328 and Patchwork_18910:

### New CI tests (1) ###

  * boot:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  



Participating hosts (5 -> 5)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9328 -> Patchwork_18910

  CI-20190529: 20190529
  CI_DRM_9328: c882f1103d140b7bdbbb7efdd2ca6abd4a3bc4e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5850: 9748a4a0f93d108955d374a866e60cb962da9b5d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18910: c968d500ff194648460637aead37a00ca2f57580 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c968d500ff19 drm/i915/pxp: Add plane decryption support
125fd8d725ba drm/i915/pavp: User interface for Protected buffer
15401e360d14 drm/i915/uapi: introduce drm_i915_gem_create_ext for TGL
ea45bdd158e3 mei: pxp: export pavp client to me client bus
a944bd332fbb mei: bus: enable pavp device.
dec5cd52eeda drm/i915/pxp: Expose session state for display protection flip
3d82e578d4c8 drm/i915/pxp: Add i915 trace logs for PXP operations
a7c6e8e4af8e drm/i915/pxp: Create the arbitrary session after boot
b68da9355145 drm/i915/pxp: Enable ioctl action to send TEE commands
12a97546fb0c drm/i915/pxp: Implement funcs to create the TEE channel
3bab939267e5 drm/i915/pxp: Enable PXP power management
3270a1c64c4e drm/i915/pxp: Termiante the session upon app crash
2f7b05c73063 drm/i915/pxp: Destroy all type0 sessions upon teardown
72b155e8c9fa drm/i915/pxp: Enable ioctl action to query PXP tag
049827bba4b3 drm/i915/pxp: Enable ioctl action to terminate the session
429636cac96a drm/i915/pxp: Func to send hardware session termination
668f4968e125 drm/i915/pxp: Enable ioctl action to set session in play
333c15e61776 drm/i915/pxp: Enable ioctl action to reserve session slot
e34ed97f0df9 drm/i915/pxp: Implement funcs to get/set PXP tag
b8289b5f361b drm/i915/pxp: Read register to check hardware session state
309be6f34e3c drm/i915/pxp: Add PXP-related registers into allowlist
e45885b5b387 drm/i915: Rename the whitelist to allowlist
403845f7ffbd drm/i915/pxp: Enable ioctl action to set the ring3 context
1414cf460ee9 drm/i915/pxp: set KCR reg init during the boot time
3dce6e2b5551 drm/i915/pxp: Add PXP context for logical hardware states.
cedefd9b5595 drm/i915/pxp: Enable PXP irq worker and callback stub
ec0a75ce495b drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/index.html

--===============9170458530611492659==
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
<tr><td><b>Series:</b></td><td>series starting with [01/27] drm/i915/pxp: Introduce Intel PXP component</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83863/">https://patchwork.freedesktop.org/series/83863/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9328 -&gt; Patchwork_18910</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18910 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18910, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18910:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9328/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9328/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18910/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9328 and Patchwork_18910:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Participating hosts (5 -&gt; 5)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9328 -&gt; Patchwork_18910</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9328: c882f1103d140b7bdbbb7efdd2ca6abd4a3bc4e3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5850: 9748a4a0f93d108955d374a866e60cb962da9b5d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18910: c968d500ff194648460637aead37a00ca2f57580 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c968d500ff19 drm/i915/pxp: Add plane decryption support<br />
125fd8d725ba drm/i915/pavp: User interface for Protected buffer<br />
15401e360d14 drm/i915/uapi: introduce drm_i915_gem_create_ext for TGL<br />
ea45bdd158e3 mei: pxp: export pavp client to me client bus<br />
a944bd332fbb mei: bus: enable pavp device.<br />
dec5cd52eeda drm/i915/pxp: Expose session state for display protection flip<br />
3d82e578d4c8 drm/i915/pxp: Add i915 trace logs for PXP operations<br />
a7c6e8e4af8e drm/i915/pxp: Create the arbitrary session after boot<br />
b68da9355145 drm/i915/pxp: Enable ioctl action to send TEE commands<br />
12a97546fb0c drm/i915/pxp: Implement funcs to create the TEE channel<br />
3bab939267e5 drm/i915/pxp: Enable PXP power management<br />
3270a1c64c4e drm/i915/pxp: Termiante the session upon app crash<br />
2f7b05c73063 drm/i915/pxp: Destroy all type0 sessions upon teardown<br />
72b155e8c9fa drm/i915/pxp: Enable ioctl action to query PXP tag<br />
049827bba4b3 drm/i915/pxp: Enable ioctl action to terminate the session<br />
429636cac96a drm/i915/pxp: Func to send hardware session termination<br />
668f4968e125 drm/i915/pxp: Enable ioctl action to set session in play<br />
333c15e61776 drm/i915/pxp: Enable ioctl action to reserve session slot<br />
e34ed97f0df9 drm/i915/pxp: Implement funcs to get/set PXP tag<br />
b8289b5f361b drm/i915/pxp: Read register to check hardware session state<br />
309be6f34e3c drm/i915/pxp: Add PXP-related registers into allowlist<br />
e45885b5b387 drm/i915: Rename the whitelist to allowlist<br />
403845f7ffbd drm/i915/pxp: Enable ioctl action to set the ring3 context<br />
1414cf460ee9 drm/i915/pxp: set KCR reg init during the boot time<br />
3dce6e2b5551 drm/i915/pxp: Add PXP context for logical hardware states.<br />
cedefd9b5595 drm/i915/pxp: Enable PXP irq worker and callback stub<br />
ec0a75ce495b drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============9170458530611492659==--

--===============0519885287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0519885287==--
