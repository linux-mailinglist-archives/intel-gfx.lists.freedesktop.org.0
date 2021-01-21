Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4F02FEFCE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 17:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427516E093;
	Thu, 21 Jan 2021 16:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2.mo3.mail-out.ovh.net (2.mo3.mail-out.ovh.net [46.105.75.36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80226E093
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 16:09:45 +0000 (UTC)
Received: from player688.ha.ovh.net (unknown [10.110.115.111])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 922AC2718EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 16:49:59 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player688.ha.ovh.net (Postfix) with ESMTPSA id F2EB31A3019AC;
 Thu, 21 Jan 2021 15:49:53 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-105G0066b14ca50-f8f7-4455-ad37-e001e1e8492d,
 CAC1A779C7E69CC0B09A0D0E1FF85449833E868F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 21 Jan 2021 17:49:49 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YAmincp4malZTRBe@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120122205.2808-5-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 11720336556518523401
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudeggdekgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieekkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Replace engine->schedule()
 with a known request operation
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Wed, Jan 20, 2021 at 12:22:00PM +0000, Chris Wilson wrote:
> Looking to the future, we want to set the scheduling attributes
> explicitly and so replace the generic engine->schedule() with the more
> direct i915_request_set_priority()
> 
> What it loses in removing the 'schedule' name from the function, it
> gains in having an explicit entry point with a stated goal.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  5 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_wait.c      | 29 +++++-----------
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  3 --
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  4 +--
>  drivers/gpu/drm/i915/gt/intel_engine_types.h  | 29 ++++++++--------
>  drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |  3 +-
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  | 33 +++++--------------
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 11 +++----
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 -
>  drivers/gpu/drm/i915/i915_request.c           | 10 +++---
>  drivers/gpu/drm/i915/i915_scheduler.c         | 15 +++++----
>  drivers/gpu/drm/i915/i915_scheduler.h         |  3 +-
>  14 files changed, 59 insertions(+), 94 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6f04f85812fe..265344d98cbb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13543,7 +13543,6 @@ int
>  intel_prepare_plane_fb(struct drm_plane *_plane,
>  		       struct drm_plane_state *_new_plane_state)
>  {
> -	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };

do we still need the 'i915_scheduler_types' type?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
