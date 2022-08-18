Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E4B598782
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 17:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2066614AB2E;
	Thu, 18 Aug 2022 15:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62C6514A3B7;
 Thu, 18 Aug 2022 15:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660836463; x=1692372463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1T/faZQqQuFMpjtbZdakLMKv18pvpPnvgVJiNbJXSF4=;
 b=fnrdS9QeLFP8Hrp+/pihM9WmupsMTJOm+eUUnz/Y29a3Tq3Jf5dcGPDA
 qs1j624qeEkLgXhoQRABIOVrK0ZzcEWB+udH3GU5i2qFjtxsawZ0Arbj6
 aG3CGo4CTxZT12a6txNnnwl5Ld/bU6bjb9iJojLTq+QELkjR7YK877G3O
 Pd0sT4QAPiFXqyqacW7MV4wYEh7pd74LdeD+066+yHRMSRZ51cdOb14kN
 Mcrjl8R8I9emEryqQ6d7TgcwODr/gpHrjadbKAZC2w0zZyWHc//Bo4H5x
 BiOczah38g7dXh+r4K1c/DSvySFRjm//60Li5acSm4qxf7GXY9iBKkMuN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="292783584"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="292783584"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 08:27:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="935848653"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.9.73])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 08:27:29 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Date: Thu, 18 Aug 2022 17:27:26 +0200
Message-ID: <6809017.18pcnM708K@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220817145348.562fcaa2@maurocar-mobl2>
References: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
 <20220817145348.562fcaa2@maurocar-mobl2>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] tests/gem_exec_fence: Fix wrong
 engine checked for store_dword capability
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mauro,

Thanks for reviewing this series, I've just pushed it.

On Wednesday, 17 August 2022 14:53:48 CEST Mauro Carvalho Chehab wrote:
> Hi Janusz,
> 
> On Fri, 12 Aug 2022 11:53:44 +0200
> Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> 
> It seems that there is a numeration issue on this series, as the patches
> on it are:
> 
>    [PATCH i-g-t 1/3] tests/gem_exec_fence: Fix wrong engine checked for store_dword capability
>    [PATCH i-g-t v2 2/3] tests/gem_exec_fence: Exclude 0  from use in store batches
>    [PATCH i-g-t v3 3/3] tests/gem_exec_fence: Restore  pre-hang checks in *await-hang scenarios
> 
> Maybe some broken script? It is also missing a cover letter.

That was not a script, I provided version numbers of individual patches 
manually, and not provided any cover letter.  First patch was a small fix, not 
directly related to the two others.  Second patch was a small enhancement, 
also not directly related to the third one.  However, the third one depended 
on the two for clean apply, and that was the only reason for me sending them 
in series.

That said, let me ask, based on your huge upstream experience, what are your 
preferences on patch version tagging if one is going to submit a series with 
new versions of some patches while still including some other that don't need 
to be changed?  Should all be marked as new (and the same) versions?

Thanks,
Janusz


