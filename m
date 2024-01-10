Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344EC829B2D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:27:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEEA510E5CF;
	Wed, 10 Jan 2024 13:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1C710E5A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:26:59 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id
 af79cd13be357-78339210979so49046085a.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 05:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1704893219; x=1705498019;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wuoo03iviwWHkadCNQ9VBPxTicDGZj9k5/ZvAak2Qbc=;
 b=T9FRykmg8L+l14EsdwJ1dozIvW8JrmpTXYd34Uj88i+542Fsf1qq55P4LCwBTnfO8g
 tkqPghm5GIieDyadYduPcKJS6tLSPjl9EkC/f5OUHpgOdiP2Xb5OIB8CvK92lvuef5Lk
 srulcna2OB2P8TvaEg40Pmwz4uoARhtv8w4PxDZrUu89ozsF+Im/8A1kMt1xLdHq4SG3
 Rt9yxPz7oJdZmWj3a6VE+C9Nk27hlX86HWtOtkEHGwBtIbHkXQZnhBmzr6oGHg7XZ3np
 GTwbJpb5gL+id59BldvMZl4g9Ra0HHnwjKFPgcvST9JejAJMs6x1ApnTDkz50d61OlDA
 Dv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704893219; x=1705498019;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wuoo03iviwWHkadCNQ9VBPxTicDGZj9k5/ZvAak2Qbc=;
 b=rUROnNrYAtwzFAF5RZAwgCv4CsU4YFVV72pVhP6sPgktHO8k+2JO44su4yU6e82Apc
 P4ZietQlul053hfolMitIY7gdTDE8BsFOuSfcdvuN9X5KiBb5swGidxpoK/AB4jxbye0
 3v0tROesZolHZA0X/c/IrS8a8e5cc+g/iNneTbzmddCYbmsdSe1J0YmQu6OVfvHxZWvQ
 JCHnXuAlUBzoCA78qf3K3XUrmwvCiBG81mYu1SFll4JJpbYOvVrrZiqGhpWLpYu5Jp5e
 ufdoIjdcn0QrUQRv2ntVtINTLk7qTBV7QEYjTSxPxYx6+na0d4KEcM4lYfnVQ6qJFHr9
 sopw==
X-Gm-Message-State: AOJu0Yw5wU+omarH3IJDinTLFYUJSsTFt/4spRXn2/sgVVVZARGFa00p
 sbhGU6o6T8f4XCs/WW3vTGZnLFeUM81zHZ26AAbseK9x8W14ZA==
X-Google-Smtp-Source: AGHT+IGdIXuMwkWII7EUXBHcbytK3jAqcLwzlJCM9W48o+05Ly6ZHA8R+Kz3tpJUp7CvP/x73Q5f0ChjbDvYlVh7+7A=
X-Received: by 2002:a05:6214:1630:b0:680:f8b7:44fe with SMTP id
 e16-20020a056214163000b00680f8b744femr985896qvw.13.1704893218734; Wed, 10 Jan
 2024 05:26:58 -0800 (PST)
MIME-Version: 1.0
References: <20240109181104.1670304-1-andri@yngvason.is>
 <20240109181104.1670304-3-andri@yngvason.is>
 <CAPj87rNan8B5urDFkmD_Vti4to6p3NmvXYsTFQTNg-Ue2ieDug@mail.gmail.com>
 <CAFNQBQwiqqSRqzXAnC035UWCGF3=GGFR5SpDd=biPTOEA+cWbQ@mail.gmail.com>
 <ZZ509L_kmVC4IUBW@phenom.ffwll.local>
In-Reply-To: <ZZ509L_kmVC4IUBW@phenom.ffwll.local>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 10 Jan 2024 13:26:46 +0000
Message-ID: <CAPj87rOiS8F=oDW3iE=bgFyfeJnYhy8kPF2v-uYOq3xgYtVPAg@mail.gmail.com>
Subject: Re: [PATCH 2/7] drm/uAPI: Add "active color format" drm property as
 feedback for userspace
To: Andri Yngvason <andri@yngvason.is>, Harry Wentland <harry.wentland@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, Simon Ser <contact@emersion.fr>, 
 Werner Sembach <wse@tuxedocomputers.com>
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 10 Jan 2024 at 10:44, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Tue, Jan 09, 2024 at 11:12:11PM +0000, Andri Yngvason wrote:
> > =C5=A3ri., 9. jan. 2024 kl. 22:32 skrifa=C4=91i Daniel Stone <daniel@fo=
oishbar.org>:
> > > How does userspace determine what's happened without polling? Will it
> > > only change after an `ALLOW_MODESET` commit, and be guaranteed to be
> > > updated after the commit has completed and the event being sent?
> > > Should it send a HOTPLUG event? Other?
> > >
> >
> > Userspace does not determine what's happened without polling. The purpo=
se
> > of this property is not for programmatic verification that the preferre=
d
> > property was applied. It is my understanding that it's mostly intended =
for
> > debugging purposes. It should only change as a consequence of modesetti=
ng,
> > although I didn't actually look into what happens if you set the "prefe=
rred
> > color format" outside of a modeset.
>
> This feels a bit irky to me, since we don't have any synchronization and
> it kinda breaks how userspace gets to know about stuff.
>
> For context the current immutable properties are all stuff that's derived
> from the sink (like edid, or things like that). Userspace is guaranteed t=
o
> get a hotplug event (minus driver bugs as usual) if any of these change,
> and we've added infrastructure so that the hotplug event even contains th=
e
> specific property so that userspace can avoid re-read (which can cause
> some costly re-probing) them all.

Right.

> [...]
>
> This thing here works entirely differently, and I think we need somewhat
> new semantics for this:
>
> - I agree it should be read-only for userspace, so immutable sounds right=
.
>
> - But I also agree with Daniel Stone that this should be tied more
>   directly to the modeset state.
>
> So I think the better approach would be to put the output type into
> drm_connector_state, require that drivers compute it in their
> ->atomic_check code (which in the future would allow us to report it out
> for TEST_ONLY commits too), and so guarantee that the value is updated
> right after the kms ioctl returns (and not somewhen later for non-blockin=
g
> commits).

That's exactly the point. Whether userspace gets an explicit
notification or it has to 'know' when to read isn't much of an issue -
just as long as it's well defined. I think the suggestion of 'do it in
atomic_check and then it's guaranteed to be readable when the commit
completes' is a good one.

I do still have some reservations - for instance, why do we have the
fallback to auto when userspace has explicitly requested a certain
type? - but they may have been covered previously.

Cheers,
Daniel
