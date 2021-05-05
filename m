Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB92374347
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 19:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD436EC30;
	Wed,  5 May 2021 17:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD1A96EC23;
 Wed,  5 May 2021 17:04:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4540A47DF;
 Wed,  5 May 2021 17:04:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 05 May 2021 17:04:40 -0000
Message-ID: <162023428064.25405.10703471873887742021@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210505162415.531876-1-hdegoede@redhat.com>
In-Reply-To: <20210505162415.531876-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?_+_usb-type-c=3A_Add_support_for_out-of-band_hotplug_notificati?=
 =?utf-8?b?b24gKHJldjMp?=
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
Content-Type: multipart/mixed; boundary="===============0738547720=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0738547720==
Content-Type: multipart/alternative;
 boundary="===============9108853594183898974=="

--===============9108853594183898974==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm + usb-type-c: Add support for out-of-band hotplug notification (rev3)
URL   : https://patchwork.freedesktop.org/series/89604/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10049 -> Patchwork_20068
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/index.html

Known issues
------------

  Here are the changes found in Patchwork_20068 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10049 -> Patchwork_20068

  CI-20190529: 20190529
  CI_DRM_10049: fe703280e0c2a546e3069f305a14e35d826dc445 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6079: c77c1e9d716481aa44d713e8c91873aa679547ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20068: e7296766bbc897c89f8f7e8e02fb8ba104a9ea6f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e7296766bbc8 usb: typec: altmodes/displayport: Notify drm subsys of hotplug events
22689857296c usb: typec: altmodes/displayport: Make dp_altmode_notify() more generic
b34f32b5c921 drm/i915/dp: Add support for out-of-bound hotplug events
25e2d6a48b06 drm/i915: Associate ACPI connector nodes with connector entries (v2)
cab18742ace5 drm/connector: Add support for out-of-band hotplug notification (v3)
fe6483992ee9 drm/connector: Add drm_connector_find_by_fwnode() function (v2)
960a3855750f drm/connector: Add a fwnode pointer to drm_connector and register with ACPI (v2)
458ce084c841 drm/connector: Give connector sysfs devices there own device_type

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/index.html

--===============9108853594183898974==
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
<tr><td><b>Series:</b></td><td>drm + usb-type-c: Add support for out-of-band hotplug notification (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89604/">https://patchwork.freedesktop.org/series/89604/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10049 -&gt; Patchwork_20068</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20068 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20068/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10049 -&gt; Patchwork_20068</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10049: fe703280e0c2a546e3069f305a14e35d826dc445 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6079: c77c1e9d716481aa44d713e8c91873aa679547ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20068: e7296766bbc897c89f8f7e8e02fb8ba104a9ea6f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e7296766bbc8 usb: typec: altmodes/displayport: Notify drm subsys of hotplug events<br />
22689857296c usb: typec: altmodes/displayport: Make dp_altmode_notify() more generic<br />
b34f32b5c921 drm/i915/dp: Add support for out-of-bound hotplug events<br />
25e2d6a48b06 drm/i915: Associate ACPI connector nodes with connector entries (v2)<br />
cab18742ace5 drm/connector: Add support for out-of-band hotplug notification (v3)<br />
fe6483992ee9 drm/connector: Add drm_connector_find_by_fwnode() function (v2)<br />
960a3855750f drm/connector: Add a fwnode pointer to drm_connector and register with ACPI (v2)<br />
458ce084c841 drm/connector: Give connector sysfs devices there own device_type</p>

</body>
</html>

--===============9108853594183898974==--

--===============0738547720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0738547720==--
