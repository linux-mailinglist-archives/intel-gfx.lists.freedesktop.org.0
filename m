Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05325BDBFC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 07:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2C010E272;
	Tue, 20 Sep 2022 05:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6530810E275;
 Tue, 20 Sep 2022 05:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663650265; x=1695186265;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XXTv8fa6CisEueKRo7llnrkNKa5oi+bB0R5Yqu5tpnU=;
 b=n5Hs9XBGoyjDdRhLYN40mTupGHpe4KSO1Nw2Zjs1Jez9ziK0m1OeG/kV
 mqFKoX3l4J2LCDbxTSJDSxGbWhe7aUMeKJwzMjUaBW/mEfT6vXDuMIfNA
 kKeFXOSJksjucyyqj4Dt5SXCI5BshsqEkE2UJoRSBn6/MoCEI/w9qPFqm
 F5ij8q989QETc7jlBmzTu6Y6srseuJk8rbI+StPSAa4p96eWCdNOy7HyO
 UBQYpiqIC73QFR+0zxFa7jrbeBX1VL1GQC3JraS1JM8fTUekI9oH+fRmn
 dkexiQLNy92bhu21LgUKr6eP3ZJJUcTYBPPqkSCWQJ8mIAKcYRIX6Ialk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="325896898"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="325896898"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 22:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="687256852"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga004.fm.intel.com with ESMTP; 19 Sep 2022 22:04:24 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.59.34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 41C7F580A31;
 Mon, 19 Sep 2022 22:04:23 -0700 (PDT)
Date: Tue, 20 Sep 2022 07:04:20 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20220920070420.68bcb154@maurocar-mobl2>
In-Reply-To: <20220913120441.146757-2-janusz.krzysztofik@linux.intel.com>
References: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
 <20220913120441.146757-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] tests/core_hotunplug:
 Free mem allocated by igt_audio_driver_unload
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Sep 2022 14:04:38 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Since we pass NULL to igt_audio_driver_unload(), realloc() it calls
> allocates new memory for us.  Free it each time we no longer need it,
> before dropping a pointer to it, to avoid memory leaking.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  tests/core_hotunplug.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index a0d29b799a..733ea8efb0 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -187,6 +187,7 @@ static void driver_bind(struct hotunplug *priv, int timeout)
>  	if (priv->snd_driver) {
>  		igt_info("Realoading %s\n", priv->snd_driver);
>  		igt_kmod_load(priv->snd_driver, NULL);
> +		free(priv->snd_driver);
>  		priv->snd_driver = NULL;
>  	}
>  }
