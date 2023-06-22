Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAFC73AD55
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 01:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3712510E5BA;
	Thu, 22 Jun 2023 23:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp119.iad3a.emailsrvr.com (smtp119.iad3a.emailsrvr.com
 [173.203.187.119])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12BCC10E5B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 23:46:50 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp39.relay.iad3a.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 2E14E3FA4; 
 Thu, 22 Jun 2023 19:38:01 -0400 (EDT)
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Date: Thu, 22 Jun 2023 16:37:59 -0700
Message-ID: <24458277.F5hiQvuxAt@mizzik>
In-Reply-To: <20230622182731.3765039-1-lucas.demarchi@intel.com>
References: <20230622182731.3765039-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3654635.B3pjK0ouWD";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Classification-ID: a2f77604-44eb-471c-83ac-7c871bfb7d70-1-1
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Move wal_get_fw_for_rmw()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--nextPart3654635.B3pjK0ouWD
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Kenneth Graunke <kenneth@whitecape.org>
Subject: Re: [PATCH 1/3] drm/i915/gt: Move wal_get_fw_for_rmw()
Date: Thu, 22 Jun 2023 16:37:59 -0700
Message-ID: <24458277.F5hiQvuxAt@mizzik>
In-Reply-To: <20230622182731.3765039-1-lucas.demarchi@intel.com>
References: <20230622182731.3765039-1-lucas.demarchi@intel.com>
MIME-Version: 1.0

On Thursday, June 22, 2023 11:27:29 AM PDT Lucas De Marchi wrote:
> Move helper function to get all the forcewakes required by the wa list
> to the top, so it can be re-used by other functions.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 32 ++++++++++-----------
>  1 file changed, 16 insertions(+), 16 deletions(-)

Patches 1 and 3 are:

Reviewed-by: Kenneth Graunke <kenneth@whitecape.org>

--nextPart3654635.B3pjK0ouWD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAmSU21cACgkQW1vaBx1J
zDjnFA//U/nDOsrzgqZo+472pK9esanusHc+zttV6T+Hiu2ArNKir9nikv5vlAq/
PdK5ttI+n+rpT749bXaTEu00LIRkQvCd7hypf3ZPkdYuKpQNbbi8Ul+mWz9pWXrF
DBQkRfB4t2Y0+BBuvMcFzJGPT5+a1wa/L+kNacBMSnZueD5AzwRr99cNofd7ZJAX
OhMCIidq8f4m25GFRSO7U+/APAbZC2qzt+GMutwT4rbpW7fogMs48SmX5xy0xOUb
DVq807pf4l4JKFdFJBeDPsskof232pGzvogLQ4ejMRsRmdgMbV7J3hWTk2GUlSL0
SIgmc0SH42zDKx5T7uPnE5YrDCe8ot2BaDKYJEtuIn9OW7sKy9emZpNuXu5SqW5+
bxvaWr4ft4JLUxxuefA5/z2AwtnwrZUzKVGM+Jsu8I9Hj4NBVhFqqsqK9mfQVt1U
CHTyk3EQex4RgYx5p38cmA0ZdiIjfZx7GEg0HQ1jhe3eASvNxTPeJjEo6KnIwvKn
ecSOhHFhJoya85EoplM+5DVzoFz5LHXzToBUCrfNctHbVamCFKTuiiye3C0G8yAf
bYc55CcCaoPq0rOK4CRd2//KFO1+CDX9YdMO7IdObjwkAwqdbIoqOcKU/j2pjZ3f
gMO0PYrF7yP1yttFngKyy4UezfF/36aYHoR+FVMsbnOBWNO4LFY=
=kvk+
-----END PGP SIGNATURE-----

--nextPart3654635.B3pjK0ouWD--



