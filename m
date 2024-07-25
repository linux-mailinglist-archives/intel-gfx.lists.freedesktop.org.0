Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9634947E5D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B8E10E217;
	Mon,  5 Aug 2024 15:41:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=paranoici.org header.i=@paranoici.org header.b="dDWDd6Ob";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 418 seconds by postgrey-1.36 at gabe;
 Thu, 25 Jul 2024 22:07:07 UTC
Received: from latitanza.investici.org (latitanza.investici.org
 [82.94.249.234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D79610E8D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 22:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1721944807;
 bh=EFvboGXUlQHMCcVwnWprcu2v62oM287d/Ren0Lgz1GQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dDWDd6ObqI8zMwpUFRINZPiwvg+hqsyc+uz95509FkdVkgCLgQnqAeREmwO87kPk6
 Xhh+rOwVh7tTZKTR5RrKWl0mAhc5W7dV1pKBxNvCUQutwu9izSGCiGa5jorpfwNyja
 +WRck/yRmJiXSbcwREme8FUNrKvioCdOZdBxqIAs=
Received: from mx3.investici.org (unknown [127.0.0.1])
 by latitanza.investici.org (Postfix) with ESMTP id 4WVPvC44X3zGp0y;
 Thu, 25 Jul 2024 22:00:07 +0000 (UTC)
Received: from [82.94.249.234] (mx3.investici.org [82.94.249.234])
 (Authenticated sender: invernomuto@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4WVPvC3j1pzGnxV; Thu, 25 Jul 2024 22:00:07 +0000 (UTC)
Received: from frx by crunch with local (Exim 4.98)
 (envelope-from <invernomuto@paranoici.org>)
 id 1sX6VK-000000005sb-1ckf; Fri, 26 Jul 2024 00:00:06 +0200
Date: Thu, 25 Jul 2024 23:59:29 +0200
From: Francesco Poli <invernomuto@paranoici.org>
To: imre.deak@intel.com
Cc: Intel GFX list <intel-gfx@lists.freedesktop.org>,
 1075770@bugs.debian.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [bug report] adlp_tc_phy_connect [i915] floods logs with
 drm_WARN_ON(tc->mode == TC_PORT_LEGACY) call traces
Message-Id: <20240725235929.68dd56625806ac0c8d20a2c8@paranoici.org>
In-Reply-To: <ZqFIKLLcUQrd1IAq@ideak-desk.fi.intel.com>
References: <20240715203543.63b40a68931fdc45332ba9f8@paranoici.org>
 <ZqFIKLLcUQrd1IAq@ideak-desk.fi.intel.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg="PGP-SHA512";
 boundary="Signature=_Thu__25_Jul_2024_23_59_29_+0200_/xtDjBi_G0DJQSI3"
X-Mailman-Approved-At: Mon, 05 Aug 2024 15:41:47 +0000
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

--Signature=_Thu__25_Jul_2024_23_59_29_+0200_/xtDjBi_G0DJQSI3
Content-Type: multipart/mixed;
 boundary="Multipart=_Thu__25_Jul_2024_23_59_29_+0200_acb1MqPz6BBQjCY0"


--Multipart=_Thu__25_Jul_2024_23_59_29_+0200_acb1MqPz6BBQjCY0
Content-Type: text/plain; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Jul 2024 21:30:00 +0300 Imre Deak wrote:

[...]
> Thanks for the logs.

Thanks to you for looking into them!
By the way, I have just upgraded the Linux kernel, but the
issue stays the same:

  $ uname -srvmo
  Linux 6.9.10-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.9.10-1 (2024-07-19) x8=
6_64 GNU/Linux

> The VBT claims that the laptop has 1 USB-C

which I think it has (and dmidecode seems to see it)...

> and 3 legacy DP connectors (the latter 3 being a bit odd on a laptop,
> even if not impossible).

Do you mean that I should see 3 external DisplayPort connectors?
I really cannot spot them.
I cannot see any set of three identical connectors on the "outer
surface" of the laptop case, actually.

However, the graphics software stack sees them, as confirmed by
the output of 'xrandr' (attached).

Could they be internal (unused) connectors?

Or maybe they are not really present in the hardware, and the Linux
kernel wrongly thinks they are there, because of some bug...?
Could this happen?!?

> The DMI in BIOS says:
>=20
> DMI: Notebook NLxxPUx/NLxxPUx, BIOS 1.07.09 11/17/2023
>=20
> for which I can't find the particular system to check the actual
> configuration. Could you point to the laptop vendor/model's page or
> describe what are the connectors on it?

The label on the bottom of the laptop case says:

  MODEL: NL41PU

and

  PRODUCT CODE: NL41PU2

According to the same label, the brand should be [Clevo].

[Clevo]: <https://clevo-computer.com/en/>

I bought the laptop from an Italian shop which, among other things,
assembles customized laptops, that can be configured through
a web [configurator] (unfortunately, it seems that the website
is in Italian only...).

[configurator]: <https://syspack.com/configuratoreNotebook.php>

The notebook that I selected (along with other components) is
identified as "Work14 i5-1235U DDR4 M.2 14" FullHD"
The provided description (translated into English by me) is attached.

I think the Clevo NL41PU laptop is the same as the one
described [here].

[here]: <https://laptopwithlinux.com/product/clevo-nl41/>

>=20
> Could you check if there is a BIOS upgrade available?

Following from the Clevo [support] site, I think I found
the relevant download server [folder], but it seems to me that
there is no upgrade later than "1.07.09 11/17/2023"...
Actually, I cannot even see that version, which is awkward.
Maybe I am misunderstanding something...   :-(
Or maybe not: I have also asked the shop about possible BIOS upgrades,
and they replied to me that there are no BIOS upgrades yet for that
model, as far as they can tell.

[support]: <https://clevo-computer.com/en/support-drivers>
[folder]: <https://my.hidrive.com/share/yze8mg-wf8#$/BIOS%20and%20EC%20Firm=
ware/CLEVO/N_Series/NLxxx/NLxxPxx/NL4xPUx>

> Please follow up
> on the gitlab issue as Jani suggested.

I had reported the bug to the Debian BTS (Bug Tracking System), where
I was told to report the bug upstream, by contacting developers/mailing
lists.
Now on this mailing list, I am being told to report the issue on
gitlab.freedesktop.org (which requires to register an account, in order
to report issues)... Having to jump through all these hoops is beginning
to be a little time consuming...   :-(


--=20
 http://www.inventati.org/frx/
 There's not a second to spare! To the laboratory!
..................................................... Francesco Poli .
 GnuPG key fpr =3D=3D CA01 1147 9CD2 EFDF FB82  3925 3E1C 27E1 1F69 BFFE

--Multipart=_Thu__25_Jul_2024_23_59_29_+0200_acb1MqPz6BBQjCY0
Content-Type: application/gzip;
 name="xrandr.out.gz"
Content-Disposition: attachment;
 filename="xrandr.out.gz"
Content-Transfer-Encoding: base64

H4sICKIKomYAA3hyYW5kci5vdXQApVRNj9QwDL3Pr8gRWBjl03E57wEOSEj8gtFsgUqbLurOouy/
J0nj1G1HCDEzh1qx37Of7eTbeer7UciPIgzjEF6CMFqKKLSU78X5ZZr68SJUV86UxHQYTrHEKTBo
82n+Hvr7rx+UOD+NY3++9A/i1zSE0/RaoDED79JfvBmfpnB6FI/994sYxt/9lGOn4cfPS2JKxM/i
tXzeCiO7EDK9NyEchFiYRP6BPEr37m42VD5x3bHzZAAZRogCBsxgN4Ozw1UDsUZYuYkgByRHJ+fz
4ujIsDsyXTG6pNO21apZlhUZbOvI0A5qRIZKgloZUa0dTXaJMIDRAzZyRDIcI8erWqh12JqpGMbr
a3kJjCTC24pJ0pdKMsZu1CSFC+nKoTHC3BUa8+zADiJ4zRyKJXMeFlE0jmUNqGQaUE4P1AdalF2B
zvKIRkaywWxYU2cZa2tVMkyp28FRk5o0TKfdWs1qERBstAisAF0NV+ftJedgK5vrsI7Xvl1QyOkV
b6ZeONfQ7YJmqMWdyHofCke6qFayutysDUvrCgfamF+PFrHb1JKFD6hFdKwOAzyiVdrmQhfUVHVJ
MsvLpp0dGvGaqApNkqP2LN1u+vlqGz79NnRTG2NNymLNX0aaHt8UwZtb+5GURi31AnW0L8osUIW8
Hyv1n+6/fE4v9MPwvDzS//4cH8rzfgNY3wI2t4Dtf4P/AKsNUM4cBwAA

--Multipart=_Thu__25_Jul_2024_23_59_29_+0200_acb1MqPz6BBQjCY0
Content-Type: application/gzip;
 name="work14_description.txt.gz"
Content-Disposition: attachment;
 filename="work14_description.txt.gz"
Content-Transfer-Encoding: base64

H4sICOwtomYAA3dvcmsxNF9kZXNjcmlwdGlvbi50eHQAfVTbTuMwEH33V8zLrooEJUlTVB7bBii7
LUK0wL66ydB469hZXwTl63cSyqYp0VqK4suZ8cyZM05EgcoKrSz0nuENEvpmJ0BjEMX9SygK2ojC
y/7wY0qzmGZswa2FzhH2B0PYbti90Slaq80XxK1yKEEMIYwGw0cIA5hqg5aWsMoN8syybtd793Az
e4cz8CU4DTHFU62FgpU3aw2FzpAtfVlq4zCDAgttdo39UmeCMkmSh5jd+WKNBvQLWKndYT4RJfgG
ttPLBV0oJtDb7ynt6PJU+gyzk4OLM2G3li36EdzTRkcixGZ1GkWjAHo1+shXImwp+Q6+w43hZS5S
y55EhhrGGS8dton9IHWWNNhlahBVJ4dxRde1l5Lw86sEuHJiI7lBuAhg9s4e0GrpHcni2PQyCioV
BKOA3a2W0+4axcNvbOwzodk0F6XFjuxhJjY5JPgilKjv+cRzpVB2SIsirSEQQboHsammf+pq9bbH
QqRGlzn5pUS5yiAnWVVrkpn2ji1L5Fs0HfdEILXP7P6cVbRuDK818OkTa+AOLZuP77oZIIVs+Fo4
IAR7FgYltcKnnhrUv5PK0SiI+mE4/nU+np5Pzm/O72p59NqamEiPTmuXf3HWnDwN+0HVBl7isfkz
rlNedAUckc3iHq5nCfuJu7XmJvsKunVcCq5gzdOtpOx6V2ojhc2BiDb4x6N1J2ylfZqXvMu8IdN9
gl5FlQsxK2VdqMJL0iI58gbZtIrigUqHx69IXWBYJlBDTA1p6aHipilvCHOuTun3uJzAgGi9QUWv
za7Es+lp3Yr7g2ZBhOzbjQRTetfWSkiCXNyyRaMJ0e6VkM1akmuf3etXSqkqody1LcP/iKoK7eHH
WTyE31QAqhO93GrjiPy5TrcHwEqbE+7ojdh1uDkoQwwpSmq3+BKec3pTpXjB/cM6glx76oBWqEfh
4Btdobgktg9AdUk/dtJcm4z9BTeamnhlBgAA

--Multipart=_Thu__25_Jul_2024_23_59_29_+0200_acb1MqPz6BBQjCY0--

--Signature=_Thu__25_Jul_2024_23_59_29_+0200_/xtDjBi_G0DJQSI3
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEygERR5zS79/7gjklPhwn4R9pv/4FAmaiysEACgkQPhwn4R9p
v/6rbxAAqJ6CyAsQxbgBTWBmn6X1c1KRWpjRUrvhH9oZXqagj/uABUw1YzlCo6a8
tauisNVvwJdboSXukYNu7NCotaVZq0IcCpPR5EzHWXRJJB5LmHG+JSXguZ4CUst2
IVco/Xuz/bQLNK38/9cophxPQJq6DXBgBE5Wjn309iXumGYLSuKuddRfXXkqtu0N
emhaF1fI0nz4+iOFLVn0ahPdgc/2ZOmEBrlXJ41A7P6m1qcQnhLAohlS/6GrrEom
bKVwVGuniaFqNiy2CbOU26yj/l3qans4TYdAOSeiM29BiUH8gwjD48suk6QyDpvW
/JCt9fuz0puU0HHS8WKD+4zCHdd4UEnSmB3LAqtUhhCbFMJaalymhzbY0KcSH+3F
DEP5nNuWvg9TM+I7k1W9/Cmj7cEoa9Ca7jK1nYNfJB27x/etf+/ey7XTQQYn+zgn
XUFlp/E7lCHwVgvbZsWSz4D2vVYwuI6QQp4Q4p/R+hYGxuZYAkKJ6ebdE5Ehy5d6
7wIO929y30hlA2jQ+EZlqB0ga62KOLoiVOCfp/cbx8zHiZsO1YqT/wU0prr9WPS4
w5/LRMkdF7Jv2N1MasFLAlhTi1eRvBqOe6+KpWv+LZCCXGr6ipmW0K4z2dAABK8A
yvLboDuGLIoopPGlIRtx1DYMjSOA7I29QLcr3pk4K/ZXALxK/tU=
=YYW2
-----END PGP SIGNATURE-----

--Signature=_Thu__25_Jul_2024_23_59_29_+0200_/xtDjBi_G0DJQSI3--
