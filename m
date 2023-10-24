Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 353F47D597C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 19:11:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C2210E312;
	Tue, 24 Oct 2023 17:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2205210E312
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 17:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698167473; x=1729703473;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gjg5VDG7lc3uq494hHNG5+JDII6JKPABQkbpXQHkNS8=;
 b=C0KFcnBaAMukxPHZjSht/er9PI8qNL7wHNwGvRVhCnO/bIrXxAPHsTbZ
 EOsuQgbmPvH6jxJgvCCsUibMaumT1mmTp7LC6iW7hdNmKFjtla6gXRId1
 mZFY3LV6cDjsAIX9gK3SpDi0BHLvADnP2P0B1e/CIWNKpurvjAqUNIhuF
 Ipc7DO3bKPZWt6rAxHdVj0qBgDor0/frBrdtYIjAq9H1Bq1xrOqarf+9V
 QSMZXq0/d4uYokwnYTm1YaY44qoIo6icfiVcgDMs/aXEQtNhGsh8KRU/m
 2nkSzH1BKjjHkbLROMpxKMgIU8Gljp+vR9yyTmlNNvXiZrZVtZBRiKiAW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="5741287"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="5741287"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 10:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758547737"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="758547737"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga002.jf.intel.com with SMTP; 24 Oct 2023 10:11:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Oct 2023 20:11:07 +0300
Date: Tue, 24 Oct 2023 20:11:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com>
Message-ID: <ZTf6qwCLR3YEwL9K@intel.com>
References: <20231004183455.27797-1-ville.syrjala@linux.intel.com>
 <6d207eef73fb2ad32264921ae7d1a536b6b8da61.camel@intel.com>
 <ZR22I-9YgGW9vADB@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZR22I-9YgGW9vADB@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] powercap: intel_rapl: Don't warn about BIOS
 locked limits during resume
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
Cc: "Zhang, Rui" <rui.zhang@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 04, 2023 at 09:59:47PM +0300, Ville Syrj�l� wrote:
> On Wed, Oct 04, 2023 at 06:45:22PM +0000, Pandruvada, Srinivas wrote:
> > On Wed, 2023-10-04 at 21:34 +0300, Ville Syrjala wrote:
> > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > 
> > > Restore enough of the original behaviour to stop spamming
> > > dmesg with warnings about BIOS locked limits when trying
> > > to restore them during resume.
> > > 
> > > This still doesn't 100% match the original behaviour
> > > as we no longer attempt to blindly restore the BIOS locked
> > > limits. No idea if that makes any difference in practice.
> > > 
> > I lost the context here. Why can't we simply change pr_warn to pr_debug
> > here?
> 
> I presume someone wanted to make it pr_warn() for a reason.
> I don't mind either way.

Ping. Can someone make a decision on how this should get fixed
so we get this moving forward?

> 
> > 
> > Thanks,
> > Srinivas
> > 
> > > Cc: Zhang Rui <rui.zhang@intel.com>
> > > Cc: Wang Wendy <wendy.wang@intel.com>
> > > Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > Cc: Srinivas Pandruvada <srinivas.pandruvada@intel.com>
> > > Fixes: 9050a9cd5e4c ("powercap: intel_rapl: Cleanup Power Limits
> > > support")
> > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > ---
> > > �drivers/powercap/intel_rapl_common.c | 28 ++++++++++++++++++++------
> > > --
> > > �1 file changed, 20 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/powercap/intel_rapl_common.c
> > > b/drivers/powercap/intel_rapl_common.c
> > > index 40a2cc649c79..9a6a40c83f82 100644
> > > --- a/drivers/powercap/intel_rapl_common.c
> > > +++ b/drivers/powercap/intel_rapl_common.c
> > > @@ -882,22 +882,34 @@ static int rapl_read_pl_data(struct rapl_domain
> > > *rd, int pl,
> > > ��������return rapl_read_data_raw(rd, prim, xlate, data);
> > > �}
> > > �
> > > -static int rapl_write_pl_data(struct rapl_domain *rd, int pl,
> > > -����������������������������� enum pl_prims pl_prim,
> > > -����������������������������� unsigned long long value)
> > > +static int rapl_write_pl_data_nowarn(struct rapl_domain *rd, int pl,
> > > +����������������������������������� enum pl_prims pl_prim,
> > > +����������������������������������� unsigned long long value)
> > > �{
> > > ��������enum rapl_primitives prim = get_pl_prim(rd, pl, pl_prim);
> > > �
> > > ��������if (!is_pl_valid(rd, pl))
> > > ����������������return -EINVAL;
> > > �
> > > -�������if (rd->rpl[pl].locked) {
> > > -���������������pr_warn("%s:%s:%s locked by BIOS\n", rd->rp->name,
> > > rd->name, pl_names[pl]);
> > > +�������if (rd->rpl[pl].locked)
> > > ����������������return -EACCES;
> > > -�������}
> > > �
> > > ��������return rapl_write_data_raw(rd, prim, value);
> > > �}
> > > +
> > > +static int rapl_write_pl_data(struct rapl_domain *rd, int pl,
> > > +���������������������������� enum pl_prims pl_prim,
> > > +���������������������������� unsigned long long value)
> > > +{
> > > +�������int ret;
> > > +
> > > +�������ret = rapl_write_pl_data_nowarn(rd, pl, pl_prim, value);
> > > +�������if (ret == -EACCES)
> > > +���������������pr_warn("%s:%s:%s locked by BIOS\n", rd->rp->name,
> > > rd->name, pl_names[pl]);
> > > +
> > > +�������return ret;
> > > +}
> > > +
> > > �/*
> > > � * Raw RAPL data stored in MSRs are in certain scales. We need to
> > > � * convert them into standard units based on the units reported in
> > > @@ -1634,8 +1646,8 @@ static void power_limit_state_restore(void)
> > > ����������������rd = power_zone_to_rapl_domain(rp->power_zone);
> > > ����������������for (i = POWER_LIMIT1; i < NR_POWER_LIMITS; i++)
> > > ������������������������if (rd->rpl[i].last_power_limit)
> > > -�������������������������������rapl_write_pl_data(rd, i, PL_LIMIT,
> > > -��������������������������������������������� rd-
> > > >rpl[i].last_power_limit);
> > > +�������������������������������rapl_write_pl_data_nowarn(rd, i,
> > > PL_LIMIT,
> > > +�������������������������������������������������������� rd-
> > > >rpl[i].last_power_limit);
> > > ��������}
> > > ��������cpus_read_unlock();
> > > �}
> > 
> 
> -- 
> Ville Syrj�l�
> Intel

-- 
Ville Syrj�l�
Intel
