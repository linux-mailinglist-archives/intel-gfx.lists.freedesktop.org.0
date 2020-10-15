Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5BD2908BA
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 17:44:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258E26E177;
	Fri, 16 Oct 2020 15:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32FB56ECE2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 14:37:48 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id x7so3816581wrl.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 07:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atcomputing.nl; s=atcomputing-nl;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :organization:user-agent:mime-version;
 bh=BlxdYyMIUCSA+6cNAex4SwzO8S5YCgvJxaaXIsMT2yk=;
 b=hxblWQXDdL6Pknk5gfzyWCNGujyGqTDYiCpudBE/EPSclIPZ41n+wF9Jo8c0XITvIC
 OL8ZRykRU2q4HRVLGDNTk2mZtfzkL89OqZZKT5ZFox8fToxxfF99kWo/CPMVIUsNSyXt
 yXD5DC3RBkzNVOUQIHRgWDi7YimrYMcUdA9zY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=BlxdYyMIUCSA+6cNAex4SwzO8S5YCgvJxaaXIsMT2yk=;
 b=KW+h98Gy/Yrkur00nSaPR3iXpzhqLSRVOrSjP6ixaW47hCn4ywEYI9Lb0P/HGma4vn
 ieJiiTrglHgXF2IiULBiCgE9E4qiUqpVGpPo28o7cYJCLHbSeeT/XIGfTC0HYtNnGLsr
 yzE1EiCVMoCdxqVZJHLkB+s+iHgakApIpn34LZb/cGJ+iy2wt8aPBtzvIRl0c7i32Oxi
 ezAUWiEzmMlcaw4y9i33ali9dznXe7JndcPHTX+9i+TvkNTJxqZZJAHO8xNB8r2h/JgN
 sFhjIdJMKkGqNYlzq3vWWRQpOClAmv7fPebSgb1akrapD7gzQQeQpsMJrEsHLRwxscD0
 cqpw==
X-Gm-Message-State: AOAM530PsKEyufOp4UOpjMD+syvWRMWgX9/mjYCPYViwF8KMEQmWXz64
 z4gJdNqxJCkyIQrCsRtJ3DpW2Q==
X-Google-Smtp-Source: ABdhPJwgqUnP8Mldpa0nrzDfaKpDs4xYqt1UEegfzQhzuJOOdHBy/bbgWWe996jWN8Hz/K5oGBUX+g==
X-Received: by 2002:adf:e3cb:: with SMTP id k11mr4756640wrm.341.1602772666618; 
 Thu, 15 Oct 2020 07:37:46 -0700 (PDT)
Received: from nyx ([2001:980:74ee:1:1ec4:4a28:e4c9:705c])
 by smtp.gmail.com with ESMTPSA id j7sm5253004wrn.81.2020.10.15.07.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Oct 2020 07:37:45 -0700 (PDT)
Message-ID: <b58d854afe42d45f499b978da96f0cf29c5e574c.camel@atcomputing.nl>
From: Stefan Joosten <stefan@atcomputing.nl>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Date: Thu, 15 Oct 2020 16:37:39 +0200
In-Reply-To: <20201001152346.GR6112@intel.com>
References: <60a804aa6357eb17daa1729f4bce25e762344e9f.camel@atcomputing.nl>
 <20201001152346.GR6112@intel.com>
Organization: AT Computing
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 16 Oct 2020 15:44:12 +0000
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: Force state->modeset=true
 when distrust_bios_wm==true"
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0284479495=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0284479495==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-1ehRlM2nvfRUqr5GDzRW"


--=-1ehRlM2nvfRUqr5GDzRW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Ville Syrj=C3=A4l=C3=A4,

Thank you for responding so quickly.
I was occupied with work and life for the past two weeks, sorry about
the wait, but have now managed to find some time to continue pursuing
this issue again.

On Thu, 2020-10-01 at 18:23 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> Argh. If only I had managed to land the full dbuf rework and nuke
> this mess before it came back to bite us...

Yeah... I know the feeling.

> This is definitely going to break something else, so not great.

I did expect that. The automated tests failing was a pretty good
indicator.
You put that code in to take care of something. All I did was just tear
it down because it happens to work better for me... blunt but
functional for my purposes.

Seems to need some finesse or a condition to not cause my problem? Yet
still function for the reason you put it in there for.

I am more than willing to play guinea pig and test patches on my end to
improve it with you.

> Can you file an upstream bug at
> https://gitlab.freedesktop.org/drm/intel/issues/new
> and attach dmesgs from booting both good and bad kernels with
> drm.debug=3D0x1e passed to the kernel cmdline? Bump log_buf_len=3D
> if necessary to capture the full log.

I have done so today.
It's at: https://gitlab.freedesktop.org/drm/intel/-/issues/2579

--=20
Stefan Joosten

AT Computing BV              =20
Sharing and growing together  Tel +31 24 352 72 82
Arnhemsestraatweg 33          info@atcomputing.nl
6881 ND Velp                  www.atcomputing.nl

--=-1ehRlM2nvfRUqr5GDzRW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQFKBAABCgA0FiEETjlf9HQ9GW2hDHJJSfQ+3gEWJQkFAl+IXrMWHHN0ZWZhbkBh
dGNvbXB1dGluZy5ubAAKCRBJ9D7eARYlCdRQB/0UKaMEMiO/73Q8nqqd7wMxYfhB
v5UqBk4fiG0bL1WnkW2nLq1AZ3OZWfrL+FuHp9uUC7qf6YXcAQYRlcxScMnCkdC6
SiK1NdIf5B4DULfbxaeiIfkGf94/zUdX2WTtb5ch6MufmgYfGgIovnT1TE2EKnk8
wNkZYiWMnZpffMJUU6qMHt+FR5YUdomuMGIwCDHHo7+YnLag0v+EpXBh8CNarUHa
EZKa3pOLrNAUaLr5mhDpdtEmDlDQ8of89KQod339gmI+bE1G7h0jHk6TDaMdFipU
uw8sp2MQiUWI6QJFulsIW6uwcPqCgNMKPJKWIDIlpqAxuhE5amOaJoQ0+2w5
=c3uK
-----END PGP SIGNATURE-----

--=-1ehRlM2nvfRUqr5GDzRW--


--===============0284479495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0284479495==--

