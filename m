Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9232011CA3E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 11:08:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E466ECF6;
	Thu, 12 Dec 2019 10:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51CC86ECF5;
 Thu, 12 Dec 2019 10:08:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 02:08:06 -0800
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="208027776"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.22.216])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 02:08:02 -0800
Date: Thu, 12 Dec 2019 12:07:59 +0200
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191212100759.GA22260@jlahtine-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave & Daniel,

Two important user visible fixes; GPU hang on BDW/SKL when idling
and top of screen corruption on GLK+ when FBC enabled.

Fix to Tigerlake perf/OA, HDCP commit computation touching global
state.

Then two CI spotted corner cases, race condition about context
retirement and lockdep splat about irqstate.

I'll send a PR next week still before holidays.

Regards, Joonas

***

drm-intel-fixes-2019-12-12:

- Fix user reported issue #673: GPU hang on transition to idle
- Avoid corruption on the top of the screen on GLK+ by disabling FBC
- Fix non-privileged access to OA on Tigerlake
- Fix HDCP code not to touch global state when just computing commit
- Fix CI splat by saving irqstate around virtual_context_destroy
- Serialise context retirement possibly on another CPU

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2019-12-=
12

for you to fetch changes up to 750bde2fd4ffacc297473c36d6fdb29c395b06aa:

  drm/i915: Serialise with remote retirement (2019-12-11 16:19:32 +0200)

----------------------------------------------------------------
- Fix user reported issue #673: GPU hang on transition to idle
- Avoid corruption on the top of the screen on GLK+ by disabling FBC
- Fix non-privileged access to OA on Tigerlake
- Fix HDCP code not to touch global state when just computing commit
- Fix CI splat by saving irqstate around virtual_context_destroy
- Serialise context retirement possibly on another CPU

----------------------------------------------------------------
Chris Wilson (3):
      drm/i915/gt: Save irqstate around virtual_context_destroy
      drm/i915/gt: Detect if we miss WaIdleLiteRestore
      drm/i915: Serialise with remote retirement

Umesh Nerlige Ramappa (2):
      drm/i915/perf: Allow non-privileged access when OA buffer is not samp=
led
      drm/i915/perf: Configure OAR for specific context

Ville Syrj=E4l=E4 (2):
      drm/i915/fbc: Disable fbc by default on all glk+
      drm/i915/hdcp: Nuke intel_hdcp_transcoder_config()

 drivers/gpu/drm/i915/display/intel_ddi.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c   |   3 -
 drivers/gpu/drm/i915/display/intel_fbc.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c |  26 ++--
 drivers/gpu/drm/i915/display/intel_hdcp.h |   5 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c |   3 -
 drivers/gpu/drm/i915/gt/intel_lrc.c       |  51 ++++----
 drivers/gpu/drm/i915/i915_gem.c           |  26 +++-
 drivers/gpu/drm/i915/i915_perf.c          | 204 +++++++++++++++++---------=
----
 9 files changed, 177 insertions(+), 148 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
