Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 902484E61BD
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 11:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9247E10E86B;
	Thu, 24 Mar 2022 10:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A0DA10E873
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 10:30:28 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 e25-20020a0568301e5900b005b236d5d74fso3001437otj.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 03:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Uc0PNvgW6ufWHwoM+1IgKKtb8fqQsLjFVm/SIWonGWs=;
 b=bqg+cgyFjNJ2qBYF744Zd5VO3Mgd4lWaZGU+srdtz9xBUlw1n2TyG4XDUryaaAcuZp
 711IDAn49p7J/qAfr+eSJeWuuE1SrHD6WgoTV/6iQqIqkJcapXcjv6Th81FvB7WxIta6
 EItNRGVTI9rtKlhE8jC5ZUeyfMZmO/puKh5gg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Uc0PNvgW6ufWHwoM+1IgKKtb8fqQsLjFVm/SIWonGWs=;
 b=4OtWUOyWTFfqGfJksEvbCpigOK+CWeUgjdNEfal/pkrZYyAj4EVtIk58uGMa9zv1On
 gs/kuomTxF8y+fv5mpC0NmOg4rf9BSZEFhYW5GmVK+oQkdjXym8MRkTQe3RWhm1JMstZ
 NBhaItFNw7cfaJHi3mQitTdS1B7Tw9Pnq0ix+2KY6t3d9U2SJXdsEIq29GGQB8eMGZvE
 z/ZVmsmNeLGfFupqoTETFIvg8UO+sePwUM+XCBynvmr7eWGSb0RYjM++eoMJT+UwE8XJ
 9rns0pIpSwSyC+WICok28fK7Rrjkc4JxsEx1Tp35LV6PxmQ4Q4+xuqxIomV0S/2Dlasn
 ylHA==
X-Gm-Message-State: AOAM530ClcI3W0Nsn1eRMm/n8C2yM6iqayTI1ZFKl7aDsh0QjYVi2jAj
 SCi2+ddZ6MDunQN1o6j/1LBQ7N8svOzFXtERJ4bA/Q==
X-Google-Smtp-Source: ABdhPJzmpcSL8iD3tVsd7RBA07+gKYph1USGcc1flPM/WLuJdPYArdF8YMwI0dgrF16aHdsTbxPsG8x3GpEjuc0mXRc=
X-Received: by 2002:a9d:57c7:0:b0:5b2:3d6d:6469 with SMTP id
 q7-20020a9d57c7000000b005b23d6d6469mr1714868oti.301.1648117827484; Thu, 24
 Mar 2022 03:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220323062552.228429-1-Arunpravin.PaneerSelvam@amd.com>
 <7addb3e7-d265-c1a7-d449-7d0056f06d63@molgen.mpg.de>
 <fc60c561-c12a-c031-9558-abae3e3474ec@amd.com>
 <6f0888a2-f74d-f41f-d593-a8362e7dc673@molgen.mpg.de>
 <398f8851-d37b-4020-24ce-8f2ab9723e40@amd.com>
 <CAPj87rMETV9UkpbGRYAT3mjVhRtW75m0e9OLON6_+gdcD0Fo2Q@mail.gmail.com>
 <CADnq5_NuaN_ZziNipdqvvTQ41you==VqJg5oxQovowokaJ2K1Q@mail.gmail.com>
 <CAPj87rNyjd1xkEEARMoiaEdjLxy2rvcKa03fnNCnpN91DLhF1A@mail.gmail.com>
 <CADnq5_Mt5sWCC7hLLBH_DJdvXGqSTbNNaxWpY+cWWD9Vpa8KGQ@mail.gmail.com>
 <CAPj87rPhuVTDJSsY-HsKfvV3xkDhEn7nUd3WLsxNuJD=Mx2Zxg@mail.gmail.com>
 <c41203c8-841b-889f-5c9b-5982ee961849@amd.com>
In-Reply-To: <c41203c8-841b-889f-5c9b-5982ee961849@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 24 Mar 2022 11:30:16 +0100
Message-ID: <CAKMK7uHnFSO6spQ2iBRNcQatUZJaCfqij3Ee7YkHe3JkTzwmig@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] Commit messages (was: [PATCH v11] drm/amdgpu: add
 drm buddy support to amdgpu)
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>, Daniel Stone <daniel@fooishbar.org>,
 Alex Deucher <alexdeucher@gmail.com>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Mar 2022 at 16:32, Christian K=C3=B6nig <christian.koenig@amd.co=
m> wrote:
>
> Am 23.03.22 um 16:24 schrieb Daniel Stone:
> > On Wed, 23 Mar 2022 at 15:14, Alex Deucher <alexdeucher@gmail.com> wrot=
e:
> >> On Wed, Mar 23, 2022 at 11:04 AM Daniel Stone <daniel@fooishbar.org> w=
rote:
> >>> That's not what anyone's saying here ...
> >>>
> >>> No-one's demanding AMD publish RTL, or internal design docs, or
> >>> hardware specs, or URLs to JIRA tickets no-one can access.
> >>>
> >>> This is a large and invasive commit with pretty big ramifications;
> >>> containing exactly two lines of commit message, one of which just
> >>> duplicates the subject.
> >>>
> >>> It cannot be the case that it's completely impossible to provide any
> >>> justification, background, or details, about this commit being made.
> >>> Unless, of course, it's to fix a non-public security issue, that is
> >>> reasonable justification for eliding some of the details. But then
> >>> again, 'huge change which is very deliberately opaque' is a really
> >>> good way to draw a lot of attention to the commit, and it would be
> >>> better to provide more detail about the change to help it slip under
> >>> the radar.
> >>>
> >>> If dri-devel@ isn't allowed to inquire about patches which are posted=
,
> >>> then CCing the list is just a fa=C3=A7ade; might as well just do it a=
ll
> >>> internally and periodically dump out pull requests.
> >> I think we are in agreement. I think the withheld information
> >> Christian was referring to was on another thread with Christian and
> >> Paul discussing a workaround for a hardware bug:
> >> https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fww=
w.spinics.net%2Flists%2Famd-gfx%2Fmsg75908.html&amp;data=3D04%7C01%7Cchrist=
ian.koenig%40amd.com%7C6a3f2815d83b4872577008da0ce1347a%7C3dd8961fe4884e608=
e11a82d994e183d%7C0%7C0%7C637836458652370599%7CUnknown%7CTWFpbGZsb3d8eyJWIj=
oiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sda=
ta=3DQtNB0XHMhTgH%2FNHMwF23Qn%2BgSdYyHJSenbpP%2FHG%2BkxE%3D&amp;reserved=3D=
0
> > Right, that definitely seems like some crossed wires. I don't see
> > anything wrong with that commit at all: the commit message and a
> > comment notes that there is a hardware issue preventing Raven from
> > being able to do TMZ+GTT, and the code does the very straightforward
> > and obvious thing to ensure that on VCN 1.0, any TMZ buffer must be
> > VRAM-placed.
> >
> > This one, on the other hand, is much less clear ...
>
> Yes, completely agree. I mean a good bunch of comments on commit
> messages are certainly valid and we could improve them.
>
> But this patch here was worked on by both AMD and Intel developers.
> Where both sides and I think even people from other companies perfectly
> understands why, what, how etc...
>
> When now somebody comes along and asks for a whole explanation of the
> context why we do it then that sounds really strange to me.

Yeah gpus are using pages a lot more like the cpu (with bigger pages
of benefit, but not required, hence the buddy allocator to coalesce
them), and extremely funny contig allocations with bonkers
requirements aren't needed anymore (which was the speciality of
drm_mm.c). Hence why both i915 and amdgpu move over to this new buddy
allocator for managing vram.

I guess that could be added to the commit message, but also it's kinda
well known - the i915 patches also didn't explain why we want to
manage our vram with a buddy allocator (I think some of the earlier
versions explained it a bit, but the version with ttm integration that
landed didnt).

But yeah the confusing comments about hiding stuff that somehow
spilled over from other discussions into this didn't help :-/
-Daniel

> Thanks for jumping in here,
> Christian.
>
> >
> > Cheers,
> > Daniel
>


--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
