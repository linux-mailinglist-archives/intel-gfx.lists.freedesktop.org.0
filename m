Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 511357D5AE9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 20:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC55210E472;
	Tue, 24 Oct 2023 18:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com
 [209.85.161.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658C710E472
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 18:52:48 +0000 (UTC)
Received: by mail-oo1-f43.google.com with SMTP id
 006d021491bc7-582050ce2d8so465412eaf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 11:52:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698173567; x=1698778367;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LVYlVHR9pYIMuvG17VXitFil99pf6BKjPqJU/KKqj2w=;
 b=CLF6cC3smEBUsWrPPGPyfooXi3wTh532hhWbWOimGvEqVqnRXb7zGwEx/QZfpCVEWa
 UTEUij8/TsE0OGwxQG1haqs2/q8PQG6BlkUZZm3Ls7fi/UX9hcYVT8v1xM5DFbeWE7iw
 UszOSW8Oo9mPCWMl4XNRjV1Ba4oyJ14gBukv3XM92UnL+qGdFzHOf1Q2Ff1JODyNdghi
 dRjk+CR/xDuG0259XbsPhsaNVYtpt2cfUqcpjmWtByjcwuLtBOe/KcG8h6VqYcGKHaED
 edHPQxi5giGbNSuZexz++4iHQvFt5r2Yeq0Ea9M5PJoij1UukkmbqcWSF0mkdMidqsiJ
 1rcA==
X-Gm-Message-State: AOJu0YxI9jza6mgpL+l/MZN/VexSpMEVUNx0KpbxahNRBJ6eKAE/tlQ9
 Ede+rzHve/S3vLWp6idCax8YBGMkZTnrfyKaVQ6C5pVH
X-Google-Smtp-Source: AGHT+IHDPdUZo5h0lWf1OFlLr+zHVQ2nSUpiByu4SZLn0AGulo7kbvG9QdpdztMYUErED+CQYZZunIjx3OMjoaASS20=
X-Received: by 2002:a4a:df4e:0:b0:57c:6e35:251e with SMTP id
 j14-20020a4adf4e000000b0057c6e35251emr13615268oou.1.1698173567342; Tue, 24
 Oct 2023 11:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <20231004183455.27797-1-ville.syrjala@linux.intel.com>
 <6d207eef73fb2ad32264921ae7d1a536b6b8da61.camel@intel.com>
 <ZR22I-9YgGW9vADB@intel.com> <ZTf6qwCLR3YEwL9K@intel.com>
 <CAJZ5v0jzqZBHqh8dxChwJ65wT-pU3+9HxVi5f7DAcOTFpYTb9Q@mail.gmail.com>
 <ZTgRhFbp5wdsTa5W@intel.com>
In-Reply-To: <ZTgRhFbp5wdsTa5W@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 24 Oct 2023 20:52:36 +0200
Message-ID: <CAJZ5v0hBdPJB_BL9ux0NDUZQfOBddP7w3mcAO-AUGPnosA+Jhg@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, "Zhang, Rui" <rui.zhang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 24, 2023 at 8:48=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Tue, Oct 24, 2023 at 08:31:34PM +0200, Rafael J. Wysocki wrote:
> > On Tue, Oct 24, 2023 at 7:11=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > On Wed, Oct 04, 2023 at 09:59:47PM +0300, Ville Syrj=C3=A4l=C3=A4 wro=
te:
> > > > On Wed, Oct 04, 2023 at 06:45:22PM +0000, Pandruvada, Srinivas wrot=
e:
> > > > > On Wed, 2023-10-04 at 21:34 +0300, Ville Syrjala wrote:
> > > > > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > > > >
> > > > > > Restore enough of the original behaviour to stop spamming
> > > > > > dmesg with warnings about BIOS locked limits when trying
> > > > > > to restore them during resume.
> > > > > >
> > > > > > This still doesn't 100% match the original behaviour
> > > > > > as we no longer attempt to blindly restore the BIOS locked
> > > > > > limits. No idea if that makes any difference in practice.
> > > > > >
> > > > > I lost the context here. Why can't we simply change pr_warn to pr=
_debug
> > > > > here?
> > > >
> > > > I presume someone wanted to make it pr_warn() for a reason.
> > > > I don't mind either way.
> > >
> > > Ping. Can someone make a decision on how this should get fixed
> > > so we get this moving forward?
> >
> > I thought we were going to replace the pr_warn() with pr_debug().
>
> I didn't get any answer whether anyone wants to keep the pr_warn().
> If everyone is happy with pr_debug() that then I can send a patch
> for it.

Yes, please.
