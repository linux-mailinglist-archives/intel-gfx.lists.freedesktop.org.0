Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98851A0C15D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 20:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBC010E7B2;
	Mon, 13 Jan 2025 19:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
 [209.85.166.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611CC10E7B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 19:26:33 +0000 (UTC)
Received: by mail-il1-f181.google.com with SMTP id
 e9e14a558f8ab-3a8f1c97ef1so12927955ab.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 11:26:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736796392; x=1737401192;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NjATw+vii2JcjttvIonMoyDNIIgf7uuZxot8MsqDYpQ=;
 b=VhDRuzvHq5XRtTokdBFejbhNlWCHnJ+YDWxLnLmfLRLzLzVDqHvxmC5Hc7Y29sjSTD
 cda+Wacq0lDb0zr1DhgC/AOxWefTi3rx5XeRRcWzjZi64apKk58hMvI9vi5Ln+YR+xDk
 SHG+uk4iQO6jPOOUSEAfdjJJIdcDvprbYZ2sHPvzg8G+kSD58nxBypN1RESodsjJMkqt
 1aSWo7PgOsaSmyqOuBEshm5MvO7UiKiqbr4KUY66RGoEY2KzfiKTC9m39TqgZVFb+ny9
 w0nq9Vr2heKqbJu8s3glIQ0Io+rmsSrRwulFDKCBbr9pcicT+FFetAGT1vDMDfCI+drX
 wtAQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXn4XMKnOCHGozypjvz9wOKXid+O9UT+Ock29opAf1Hx5fV9F85NCUG4BKG9ZtFa+EFxS9SP1pK3pw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzDbCAG0pzId2wVSsKjrqGo9VNGP4Hcx7W9T0fn1yxqcLYU8nJL
 5XgbxV+iP1ARpz1IwKkmeZufbQL8A0BQcXz/L8/unLBPV44YO1xdLwIV3lbj/DTBjHliyKLYi66
 sz0nWaKXCaa9uLmWGcj0vLxsvCzQ=
X-Gm-Gg: ASbGncvekK3a9TVCOn6PPxP2Cq9N0KUS3DpO0D93eY9xOgoxz/3LPXkc5YqKznbOUfi
 CB7RqmFx793uh4VPVI7AERjF5z9xe7EZit4/uayqX1xRsFlSKbVjBswrcuWQSzUfTmKwn3YqE
X-Google-Smtp-Source: AGHT+IGsRzAnID/jeGQ3KhV0Jrg5mXDF7vGuAYQa+CdSffFvlNPOUuj2+1SdtVjdc4yr7/bPmcoHbXtgtQ3ZLtrsrb0=
X-Received: by 2002:a05:6e02:1c87:b0:3a7:a69c:9692 with SMTP id
 e9e14a558f8ab-3ce3aa74970mr193372995ab.21.1736796392645; Mon, 13 Jan 2025
 11:26:32 -0800 (PST)
MIME-Version: 1.0
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-19-ville.syrjala@linux.intel.com>
 <DM4PR11MB63606E29BBD17E56F2FCD96DF4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB63606E29BBD17E56F2FCD96DF4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
From: Ed Maste <emaste@freebsd.org>
Date: Mon, 13 Jan 2025 14:26:21 -0500
X-Gm-Features: AbW1kvYtYuq7-1G2Nd7FdtpyB382ghUVgMPBYM_VYQoSZfXaJJq3IbLbMJbD8_w
Message-ID: <CAPyFy2CPyspxOK5H5TqnYZWuD_zXy4rz_e212eJG6Jt=DxiRzw@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH v2 18/19] drm/i915/dsb: Re-instate DSB for LUT
 updates
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Wed, 13 Sept 2023 at 14:11, Shankar, Uma <uma.shankar@intel.com> wrote:
>
> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> >
> > With all the known issues sorted out we can start to use DSB to load th=
e LUTs.

On FreeBSD with a port of the i915 driver from Linux kernel 6.7
(https://github.com/freebsd/drm-kmod/pull/332) we still encounter the
issue addressed by the workaround. I see a few commits following this
one that look like they may be related to this issue -- do you know if
there are required DSB fixes following this change?

We are of course continuing to move forward and will presumably bring
in fixes (if any) in due course, but if this was not yet reliable as
of Linux 6.7 we'll just keep the workaround in the meantime.
