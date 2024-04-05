Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A506F89A0C9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 17:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5750010E594;
	Fri,  5 Apr 2024 15:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05BA510EAC0;
 Fri,  5 Apr 2024 15:15:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1924015686870172776=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_PREEMPT=5FRT_re?=
 =?utf-8?q?lated_fixups=2E_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Apr 2024 15:15:08 -0000
Message-ID: <171233010801.1239296.1756873160168878236@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240405142737.920626-1-bigeasy@linutronix.de>
In-Reply-To: <20240405142737.920626-1-bigeasy@linutronix.de>
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

--===============1924015686870172776==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: PREEMPT_RT related fixups. (rev5)
URL   : https://patchwork.freedesktop.org/series/95463/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14534 -> Patchwork_95463v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/index.html

Participating hosts (41 -> 35)
------------------------------

  Missing    (6): bat-kbl-2 fi-snb-2520m fi-glk-j4005 fi-cfl-8109u bat-mtlp-8 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_95463v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adlm-1:         NOTRUN -> [SKIP][1] ([i915#4613]) +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlm-1:         NOTRUN -> [SKIP][2] ([i915#6621])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-dg2-8:          NOTRUN -> [ABORT][3] ([i915#10366])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-dg2-8/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlm-1:         NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlm-1:         NOTRUN -> [SKIP][5] ([i915#1849] / [i915#4342])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-adlm-1:         NOTRUN -> [SKIP][6] ([i915#9875] / [i915#9900]) +6 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlm-1:         NOTRUN -> [SKIP][7] ([i915#5354])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-adlm-1:         NOTRUN -> [SKIP][8] ([i915#1072] / [i915#9673] / [i915#9732]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlm-1:         NOTRUN -> [SKIP][9] ([i915#3555])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-adlm-1:         NOTRUN -> [SKIP][10] ([i915#3708] / [i915#9900])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-write:
    - bat-adlm-1:         NOTRUN -> [SKIP][11] ([i915#3708]) +2 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - bat-dg2-14:         [ABORT][12] ([i915#10366] / [i915#10461]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14534/bat-dg2-14/igt@i915_selftest@live@active.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-dg2-14/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - bat-dg2-8:          [INCOMPLETE][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14534/bat-dg2-8/igt@i915_selftest@live@execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-dg2-8/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10436]: https://gitlab.freedesktop.org/drm/intel/issues/10436
  [i915#10461]: https://gitlab.freedesktop.org/drm/intel/issues/10461
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9875]: https://gitlab.freedesktop.org/drm/intel/issues/9875
  [i915#9900]: https://gitlab.freedesktop.org/drm/intel/issues/9900


Build changes
-------------

  * Linux: CI_DRM_14534 -> Patchwork_95463v5

  CI-20190529: 20190529
  CI_DRM_14534: 5714711c6612120bd9c306824ec807d322c0735b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7800: 7800
  Patchwork_95463v5: 5714711c6612120bd9c306824ec807d322c0735b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

256f97cf1114 Revert "drm/i915: Depend on !PREEMPT_RT."
59cf6bcd0a6f drm/i915/guc: Consider also RCU depth in busy loop.
f53d8f14ef51 drm/i915: Drop the irqs_disabled() check
e56fef8ca0d2 drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
e1519a1de30f drm/i915/gt: Queue and wait for the irq_work item.
1f9f8befe2f0 drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS with NOTRACE
2b4fa67b9187 drm/i915: Disable tracing points on PREEMPT_RT
7f948b2219de drm/i915: Don't check for atomic context on PREEMPT_RT
4aed1dbf6550 drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
ef351138954a drm/i915: Use preempt_disable/enable_rt() where recommended

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/index.html

--===============1924015686870172776==
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
<tr><td><b>Series:</b></td><td>drm/i915: PREEMPT_RT related fixups. (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95463/">https://patchwork.freedesktop.org/series/95463/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14534 -&gt; Patchwork_95463v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/index.html</p>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Missing    (6): bat-kbl-2 fi-snb-2520m fi-glk-j4005 fi-cfl-8109u bat-mtlp-8 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_95463v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-dg2-8/igt@i915_selftest@live@guc_multi_lrc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9875">i915#9875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-adlm-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14534/bat-dg2-14/igt@i915_selftest@live@active.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10461">i915#10461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-dg2-14/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14534/bat-dg2-8/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_95463v5/bat-dg2-8/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14534 -&gt; Patchwork_95463v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14534: 5714711c6612120bd9c306824ec807d322c0735b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7800: 7800<br />
  Patchwork_95463v5: 5714711c6612120bd9c306824ec807d322c0735b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>256f97cf1114 Revert "drm/i915: Depend on !PREEMPT_RT."<br />
59cf6bcd0a6f drm/i915/guc: Consider also RCU depth in busy loop.<br />
f53d8f14ef51 drm/i915: Drop the irqs_disabled() check<br />
e56fef8ca0d2 drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()<br />
e1519a1de30f drm/i915/gt: Queue and wait for the irq_work item.<br />
1f9f8befe2f0 drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS with NOTRACE<br />
2b4fa67b9187 drm/i915: Disable tracing points on PREEMPT_RT<br />
7f948b2219de drm/i915: Don't check for atomic context on PREEMPT_RT<br />
4aed1dbf6550 drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates<br />
ef351138954a drm/i915: Use preempt_disable/enable_rt() where recommended</p>

</body>
</html>

--===============1924015686870172776==--
