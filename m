Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F1C4E5572
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:40:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D9B10E70A;
	Wed, 23 Mar 2022 15:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25B710E0D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 21:59:11 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id r22so19017310ejs.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 14:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FecU9PmWd8fUyOrd5SNagVuW8F4jdHZJjCH8ALckgvE=;
 b=IxyuWWaJpLmKQNUmzxaJK5h2Rro918BgbKEh3xUaGy9P9jwlLbpiHD+HgBcfC41DdO
 nPtSV1BnLbeLdROo/nn2AvKIz2/riJ173XPLzgrwsV1Smiu1MVm1oGYS8O8Dw9tEFWGQ
 3MwwqMnzHisHBP0UM4GqImhouHdl7WtY1+Rcvm/EsSrranTOWGc4ZfqVcMrS83zX5u6E
 Xun0YGf0aYwXMRt7fLK0ZJzjlrLseibxKLGIoFoIF8SxlM1IAnuxvhGkqp8WhKL/C4p3
 NuCMx3+XRv8vu0yvoqyvs5f8lcl7aGzjZ4unHbjwNnIS7BxnN5dQdasnOpKPA+bphzd/
 Eyjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FecU9PmWd8fUyOrd5SNagVuW8F4jdHZJjCH8ALckgvE=;
 b=B2cAXBl/xZ3E2k4FKZYyI4JYP+BiFjsBwdMVwLxsGoYBaTXHnhSn0nDqursZYPRM7g
 iA4uYLJ4+gVWzFclXNHxSEhQ8z9lFG38g7QDUAzdDo1H0SOMEBm1Ji0xuc2mlvvX7kx+
 m5ip6rJGPvROqvE+6lKwbkfVnr1qVvFqxu53xiBiOi3yZGUVwsxsronPhvGIyCKQ6Ali
 AvVsA2lWDY7B7V6BTZQawoJK/AQ9wDVmuYBE2gNeBeXTw7SnXtaDfjZJyqW4kyQpT6FU
 ioW4xPGsUX7u25hQGVTS5SlFfl7LhjVf7arT59tkFLBcQ7Bp+0+jjKMydQcHgU5Jt4cP
 5fSw==
X-Gm-Message-State: AOAM533wWZR0bpEmU4BITmNwO3859scw3vi1jPLApY63oUcUHYYBKn8j
 rEQPvZxLIDLGjaijUVDJUMCg8kXUVaJ7wtW/kBk=
X-Google-Smtp-Source: ABdhPJyUA3Rps+pJciLfdvNfjyQ79wbbWJtGoFrrLY6YD596pA/jpLn5AkbXUdOE0J/WwTh7WVilRn1zTLsG7PRBb74=
X-Received: by 2002:a17:907:2053:b0:6e0:2ad8:e10e with SMTP id
 pg19-20020a170907205300b006e02ad8e10emr9190693ejb.167.1647986350205; Tue, 22
 Mar 2022 14:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220322214616.160640-1-jose.souza@intel.com>
 <20220322214616.160640-4-jose.souza@intel.com>
In-Reply-To: <20220322214616.160640-4-jose.souza@intel.com>
From: Caz Yokoyama <cazyokoyama@gmail.com>
Date: Tue, 22 Mar 2022 14:58:59 -0700
Message-ID: <CABhNg0hh47jNo_a4EpsrhsRYcB7Mn86+f6oykX0kvGv0XPtuSg@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Content-Type: multipart/alternative; boundary="000000000000ffaef005dad5b8a9"
X-Mailman-Approved-At: Wed, 23 Mar 2022 15:40:19 +0000
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Remove MBUS
 joining invalid TODOs
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--000000000000ffaef005dad5b8a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 22, 2022 at 2:45 PM Jos=C3=A9 Roberto de Souza <jose.souza@inte=
l.com>
wrote:

> skl_compute_ddb() will for a modeset in all pipes when MBUS joining
> changes between states, so all pipes will be disabled, have all
> MBUS related registers updated and then each pipe enabled.
>
I am not clear what you want to say here. Could you rephrase above 3 lines?


> So no vblank syncronization is necessary and here droping those TODOs.
>

          dropping
-caz


>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c
> b/drivers/gpu/drm/i915/intel_pm.c
> index cf290bb704221..9ccf0f062862c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6066,7 +6066,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
>                         return ret;
>
>                 if (old_dbuf_state->joined_mbus !=3D
> new_dbuf_state->joined_mbus) {
> -                       /* TODO: Implement vblank synchronized MBUS
> joining changes */
>                         ret =3D intel_modeset_all_pipes(state);
>                         if (ret)
>                                 return ret;
> @@ -8195,10 +8194,6 @@ static void update_mbus_pre_enable(struct
> intel_atomic_state *state)
>         if (!HAS_MBUS_JOINING(dev_priv))
>                 return;
>
> -       /*
> -        * TODO: Implement vblank synchronized MBUS joining changes.
> -        * Must be properly coordinated with dbuf reprogramming.
> -        */
>         if (dbuf_state->joined_mbus) {
>                 mbus_ctl =3D MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
>                         MBUS_JOIN_PIPE_SELECT_NONE;
> --
> 2.35.1
>
>

--=20
-caz, caz at caztech dot com, 503-six one zero - five six nine nine(m)

--000000000000ffaef005dad5b8a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 22, 2022 at 2:45 PM Jos=
=C3=A9 Roberto de Souza &lt;<a href=3D"mailto:jose.souza@intel.com">jose.so=
uza@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">skl_compute_ddb() will for a modeset in all pipes when MBUS jo=
ining<br>
changes between states, so all pipes will be disabled, have all<br>
MBUS related registers updated and then each pipe enabled.<br></blockquote>=
<div>I am not clear what you want to say here. Could you rephrase=C2=A0abov=
e 3 lines?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
So no vblank syncronization is necessary and here droping those TODOs.<br><=
/blockquote><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 dropping</div><div>-caz</div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Cc: Ville Syrj=C3=A4l=C3=A4 &lt;<a href=3D"mailto:ville.syrjala@linux.intel=
.com" target=3D"_blank">ville.syrjala@linux.intel.com</a>&gt;<br>
Signed-off-by: Jos=C3=A9 Roberto de Souza &lt;<a href=3D"mailto:jose.souza@=
intel.com" target=3D"_blank">jose.souza@intel.com</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/i915/intel_pm.c | 5 -----<br>
=C2=A01 file changed, 5 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c<br>
index cf290bb704221..9ccf0f062862c 100644<br>
--- a/drivers/gpu/drm/i915/intel_pm.c<br>
+++ b/drivers/gpu/drm/i915/intel_pm.c<br>
@@ -6066,7 +6066,6 @@ skl_compute_ddb(struct intel_atomic_state *state)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return ret;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (old_dbuf_state-=
&gt;joined_mbus !=3D new_dbuf_state-&gt;joined_mbus) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0/* TODO: Implement vblank synchronized MBUS joining changes */<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ret =3D intel_modeset_all_pipes(state);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (ret)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
@@ -8195,10 +8194,6 @@ static void update_mbus_pre_enable(struct intel_atom=
ic_state *state)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!HAS_MBUS_JOINING(dev_priv))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 * TODO: Implement vblank synchronized MBUS joi=
ning changes.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 * Must be properly coordinated with dbuf repro=
gramming.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dbuf_state-&gt;joined_mbus) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mbus_ctl =3D MBUS_H=
ASHING_MODE_1x4 | MBUS_JOIN |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 MBUS_JOIN_PIPE_SELECT_NONE;<br>
-- <br>
2.35.1<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>-caz, caz at =
caztech dot com, 503-six one zero - five six nine nine(m)<br></div></div></=
div></div></div></div></div></div></div></div></div></div>

--000000000000ffaef005dad5b8a9--
