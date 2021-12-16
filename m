Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A484774CF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 15:40:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FBD1123B6;
	Thu, 16 Dec 2021 14:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39BC31123B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 14:40:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6822661E20
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 14:40:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE43CC36AE5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 14:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639665604;
 bh=OXsh/mWbcdRKUDXiDKjJWf4K8TCYYVEmBoTKCYt7DnI=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=PVmGK8BJImUXzpm7evzF9GEu64f2lXmNEZS0usLeKrYaN65BlZPMaJBJFSjJT3Bo4
 /qc3E6IaiJF5SKQ55V4hPVslLjRLSZRDLb/c5Fhj2x0t8oc1BMWAD4BFdFmok97oba
 7CIai1gkhuy2jsjBNouSJt+s2UxJDJw8Sjhfzgw3FkvbC7nGzSq4Nx298ownhaw+w6
 jdwihxwL6VSm7Ed8DW1FYwf47Yz/7/wciLJbLYHJCPXrKMY0e2CshP0VF1ca0UcshL
 X7Fbu/ZERbbr/pHV1FborMsolfupKbAFSIlvFHRZJE8Shb0meCwO/29wqEd2y+SOWd
 55EBz9ctGfIOQ==
Received: by mail-io1-f53.google.com with SMTP id p65so35513837iof.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 06:40:04 -0800 (PST)
X-Gm-Message-State: AOAM532ePLQZ1izZb25GuUQMJ1p2wNID32QmyfUlWjrYGIOMbANkxRzy
 HQdTI2bEPeME5NI7Bn0YX+hviLeYmhbIiD2ir+I=
X-Google-Smtp-Source: ABdhPJyzT9FWyrrw36jO6tkuOMsY0wrTDeJVIPeoPn+q3lhxwelvnpPNEmKheiDPgqearB5vjsKsKPgpKewfKv2scx4=
X-Received: by 2002:a05:6602:1609:: with SMTP id
 x9mr9554152iow.209.1639665604048; 
 Thu, 16 Dec 2021 06:40:04 -0800 (PST)
MIME-Version: 1.0
References: <9d3a16d4327fd6bb0a52cfe8e4bb0857a81494f2.camel@intel.com>
 <2b6c0de45581430daff7f698e94d94ad@intel.com>
 <edc5973fa662d059d4ffa3d01c5e7823817d5784.camel@intel.com>
In-Reply-To: <edc5973fa662d059d4ffa3d01c5e7823817d5784.camel@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 16 Dec 2021 09:39:53 -0500
X-Gmail-Original-Message-ID: <CA+5PVA4mVcs4sejbE=Y4Ofy0Ev-L34qcds2WfZLeOcUXy+Rcyg@mail.gmail.com>
Message-ID: <CA+5PVA4mVcs4sejbE=Y4Ofy0Ev-L34qcds2WfZLeOcUXy+Rcyg@mail.gmail.com>
To: "Tolakanahalli Pradeep,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] i915 Updates: ADL-P DMC v2.14
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sincere apologies for the delay.  Pulled and pushed out.

josh

On Wed, Dec 15, 2021 at 6:41 PM Tolakanahalli Pradeep, Madhumitha
<madhumitha.tolakanahalli.pradeep@intel.com> wrote:
>
> Bump! :)
>
> Thanks,
> - Madhumitha
>
> On Wed, 2021-12-08 at 18:11 +0000, Srivatsa, Anusha wrote:
> > Ping :)
> > Can these updates be merged to linux-firmware?
> >
> >
> > Thanks,
> > Anusha
> >
> > > -----Original Message-----
> > > From: Tolakanahalli Pradeep, Madhumitha
> > > <madhumitha.tolakanahalli.pradeep@intel.com>
> > > Sent: Thursday, December 2, 2021 6:48 AM
> > > To: Hutchings, Ben <ben@decadent.org.uk>;
> > > intel-gfx@lists.freedesktop.org;
> > > kyle@mcmartin.ca; jwboyer@kernel.org
> > > Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; linux-
> > > firmware@kernel.org
> > > Subject: [Intel-gfx] i915 Updates: ADL-P DMC v2.14
> > >
> > > Hi Ben, Josh, Kyle,
> > >
> > > Kindly add the below i915 changes to linux-firmware:
> > >
> > > The following changes since commit
> > > b0e898fbaf377c99a36aac6fdeb7250003648ca4:
> > >
> > >   linux-firmware: Update firmware file for Intel Bluetooth 9462
> > > (2021-
> > > 11-23 12:31:45 -0500)
> > >
> > > are available in the Git repository at:
> > >
> > >   git://anongit.freedesktop.org/drm/drm-firmware
> > > adlp_dmc_v2.14_update
> > >
> > > for you to fetch changes up to
> > > 2a2aa410c2eaebe5807d1fd321e42b8f53288d91:
> > >
> > >   i915: Add DMC firmware v2.14 for ADL-P (2021-12-01 16:50:30 -
> > > 0800)
> > >
> > > ----------------------------------------------------------------
> > > Madhumitha Tolakanahalli Pradeep (1):
> > >       i915: Add DMC firmware v2.14 for ADL-P
> > >
> > >  WHENCE                    |   3 +++
> > >  i915/adlp_dmc_ver2_14.bin | Bin 0 -> 77300 bytes
> > >  2 files changed, 3 insertions(+)
> > >  create mode 100644 i915/adlp_dmc_ver2_14.bin
> > >
> > > Thanks!
> > > - Madhumitha
> > >
> >
>
