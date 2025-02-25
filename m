Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF72FA44770
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 18:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79DED10E76F;
	Tue, 25 Feb 2025 17:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="BLgRT4Ot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mslow3.mail.gandi.net (mslow3.mail.gandi.net [217.70.178.249])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D65410E76F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 17:08:33 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by mslow3.mail.gandi.net (Postfix) with ESMTP id 1E8EE583D5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 16:52:59 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C76EA441BD;
 Tue, 25 Feb 2025 16:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1740502378;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hNCH3eRFqyZ9cbFT6aCducIwxMi8sSbBLLMC8kqEA5o=;
 b=BLgRT4Ot0TFGZfcR22WZQTtgeP9v96cHasEJ7YgiIvWmBa3mt5v6/C3yMrQ6pxqT/bmN/O
 0gdNjhOI54J/aFH7Ano2J+kMPGJ2nSYM38CyiF2Ao4QLkwMhBF86IJDPI7FirM5fZ9iDhL
 yAryZaR5/owX76kCmLdQczSO9XOTxaWVZtOlKxi7Cz2WiMNaoNt96Xfw59+RZtGGbe4dXI
 hkzcniEI5INYkz7tWaC2fPGmuleE2PAswJjrPzLcyQmwlOvrQ5SGVAYApcJQmvlNJCvSI8
 FSNZrTU9uqRvdk/5n83ikoCgZZy5nDeCJD5xdhO4pFBcajrrAU0f0JPJGyr4Iw==
Date: Tue, 25 Feb 2025 17:52:56 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/print: require struct drm_device for drm_err()
 and friends
Message-ID: <20250225175256.70b616a5@booty>
In-Reply-To: <dfe6e774883e6ef93cfaa2b6fe92b804061ab9d9.1737644530.git.jani.nikula@intel.com>
References: <cover.1737644530.git.jani.nikula@intel.com>
 <dfe6e774883e6ef93cfaa2b6fe92b804061ab9d9.1737644530.git.jani.nikula@intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdekvddvfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkjghfohfogggtgfesthejredtredtvdenucfhrhhomhepnfhutggrucevvghrvghsohhlihcuoehluhgtrgdrtggvrhgvshholhhisegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeeglefffefghefhtddvfeeufeeiveekgffgleekieduteekkeetvdehudekgfdvvdenucffohhmrghinhepsghoohhtlhhinhdrtghomhenucfkphepvdgrtddvmeeijedtmedvtddvtdemvggrtddumegsvgegudemleehvgejmeefgeefmeeludefvgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtvdemieejtdemvddtvddtmegvrgdtudemsggvgedumeelhegvjeemfeegfeemledufegvpdhhvghlohepsghoohhthidpmhgrihhlfhhrohhmpehluhgtrgdrtggvrhgvshholhhisegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopeefpdhrtghpthhtohepjhgrnhhirdhnihhkuhhlrgesihhnthgvlhdrtghomhdprhgtphhtthhopegurhhiqdguvghvvghlsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgiesl
 hhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
X-GND-Sasl: luca.ceresoli@bootlin.com
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

On Thu, 23 Jan 2025 17:09:12 +0200
Jani Nikula <jani.nikula@intel.com> wrote:

> The expectation is that the struct drm_device based logging helpers get
> passed an actual struct drm_device pointer rather than some random
> struct pointer where you can dereference the ->dev member.
> 
> Add a static inline helper to convert struct drm_device to struct
> device, with the main benefit being the type checking of the macro
> argument.
> 
> As a side effect, this also reduces macro argument double references.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
