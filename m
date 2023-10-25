Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21A97D62E0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 09:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADB310E56B;
	Wed, 25 Oct 2023 07:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A24A10E56B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 07:32:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CFFCBCE0B33;
 Wed, 25 Oct 2023 07:32:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C33B8C433C8;
 Wed, 25 Oct 2023 07:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698219135;
 bh=kh4qgRQok8RVxcMIISx78dggouR1GfFz3KNCHEn1BKo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O4xJriQA+xu8jwdJF3pabpmtrdccXFn4IPw1alOFmIElf25uRDWKdXNM9CJ/U0HSM
 /A6r3TpN+LfMEMpY2tE0iR2ohzYYD+NvlX0JvCUrS/X04Ob2K5J3s7rkPAAL0K/G4k
 qcAxxT4gi9QRffpbmapsTT0ko7ac5kFN2J+tjhoaGVjOVzPFWScTSeAMWE869EK/Y0
 O5ZVT8JO4k7q5kdpGkjkfyw0+FXpKAtRo7OZupTGRAyBXicnh0iIsbH/RcyotPpTo5
 easTihnUQDB11msKrKn5hsfK+A3By7PBj4VdxOsb4z6zxIAiC8cDRHfwWU6jUb2AF9
 hx3l60PZHDf3g==
Date: Wed, 25 Oct 2023 09:32:10 +0200
From: Christian Brauner <brauner@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Message-ID: <20231025-zubetoniert-estrich-398e12164835@brauner>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231013)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 25, 2023 at 06:32:01AM +0000, Borah, Chaitanya Kumar wrote:
>  Hello Christian,
>  
>  Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
>  
>  This mail is regarding a regression we are seeing in our CI runs[1] on linux-next
>  repository.

Any chance I can reproduce this locally?
