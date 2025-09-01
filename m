Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4DCB3E319
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Sep 2025 14:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0B4910E448;
	Mon,  1 Sep 2025 12:35:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="U+LMqe9i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 564 seconds by postgrey-1.36 at gabe;
 Mon, 01 Sep 2025 12:35:34 UTC
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF02210E448
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Sep 2025 12:35:34 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id 2C461C6B380;
 Mon,  1 Sep 2025 12:25:54 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 044AD60699;
 Mon,  1 Sep 2025 12:26:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id B6D601C22DA15; 
 Mon,  1 Sep 2025 14:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1756729567; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=YCqaE2ySIm63FisMTJw+SXZ6ZQeQnKmc9VEQeBOhYn0=;
 b=U+LMqe9iV+Swgehee0pXcKAhLo0/LDdrz1Ai5aPoKhYqOroiF2TWliFgjrp26Ht9lomvJT
 hwss5BxWG1+miMipU3yEWy9H7QbaMG//0xxedQ5AJbsVzl+Lxz/HYXc4vLx5gbhAgweuGu
 YxFA59FUOIB47sxOqKaQhs05cRqnn8ZH8qA1y2qrpJOGBRGVs4koV42imwxQmIiSBDool3
 0MjNgHxADWyLSpvVQPviodq7pTETuyYX7vfTN28+T4sVOW/t9H9NfBQx8CN/QzjsMBv0lA
 12PzWREHJWSLnv9raIOvD1iErCrWX0urZXxWTolgapgCfFZH5abDQ86SHur1UQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomasw@gmail.com>, 
 Alexander Usyskin <alexander.usyskin@intel.com>, 
 Raag Jadav <raag.jadav@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org
In-Reply-To: <def775b1d7afe43720d2a1778735e764a01cb017.1753950712.git.geert+renesas@glider.be>
References: <def775b1d7afe43720d2a1778735e764a01cb017.1753950712.git.geert+renesas@glider.be>
Subject: Re: [PATCH v2] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
Message-Id: <175672956260.48300.15057365027365895620.b4-ty@bootlin.com>
Date: Mon, 01 Sep 2025 14:26:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-Last-TLS-Session-Version: TLSv1.3
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

On Thu, 31 Jul 2025 10:35:14 +0200, Geert Uytterhoeven wrote:
> Intel Discrete Graphics non-volatile memory is only present on Intel
> discrete graphics devices, and its auxiliary device is instantiated by
> the Intel i915 and Xe2 DRM drivers.  Hence add dependencies on DRM_I915
> and DRM_XE, to prevent asking the user about this driver when
> configuring a kernel without Intel graphics support.
> 
> 
> [...]

Applied to mtd/fixes, thanks!

[1/1] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
      commit: f544bf03a771ee746b908e9a08ecb97c65a35055

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl

