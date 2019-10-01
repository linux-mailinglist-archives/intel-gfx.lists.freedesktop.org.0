Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D65C32D6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 13:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B5089D89;
	Tue,  1 Oct 2019 11:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2B689D89
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 11:43:31 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id DD30F804C4; Tue,  1 Oct 2019 13:43:15 +0200 (CEST)
Date: Tue, 1 Oct 2019 13:43:30 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191001114329.GA4381@amd>
References: <20190930184707.GA5703@amd>
 <87eezwdctl.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87eezwdctl.fsf@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] DDC on Thinkpad x220
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org, kernel list <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1378816626=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1378816626==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue 2019-10-01 12:39:34, Jani Nikula wrote:
> On Mon, 30 Sep 2019, Pavel Machek <pavel@ucw.cz> wrote:
> > Hi!
> >
> > Thinkpad X220 should be new enough machine to talk DDC to the
> > monitors, right? And my monitor has DDC enable/disable in the menu, so
> > it should support it, too...
> >
> > But I don't have /dev/i2c* and did not figure out how to talk to the
> > monitor. Is the support there in the kernel? What do I need to enable
> > it?
>=20
> # modprobe i2c-dev

Thanks!

I enabled I2C_CHARDEV, and installed ddccontrol:

c   ddccontrol                      - program to control monitor

I can read parameters of Dell monitor on VGA:

sudo ddccontrol dev:/dev/i2c-1 -c -d
/usr/share/ddccontrol-db/monitor/DELA013.xml
Control 0x10: +/79/100   [???] -- brightness
Control 0x12: +/63/100   [???] -- contrast

Unfortunately the Fujitsu monitor does not seem to
communicate. Fujitsu is my main monitor :-(.

pavel@duo:~$ sudo ddccontrol dev:/dev/i2c-4 -c -d
ddccontrol version 0.4.2
Copyright 2004-2005 Oleg I. Vdovikin (oleg@cs.msu.su)
Copyright 2004-2006 Nicolas Boichat (nicolas@boichat.ch)
This program comes with ABSOLUTELY NO WARRANTY.
You may redistribute copies of this program under the terms of the GNU
General Public License.

Reading EDID and initializing DDC/CI at bus dev:/dev/i2c-4...
ioctl(): No such device or address
ioctl returned -1
ioctl(): No such device or address
ioctl returned -1
ioctl(): No such device or address
ioctl returned -1
I/O warning : failed to load external entity
"/usr/share/ddccontrol-db/monitor/FUS080A.xml"
Document not parsed successfully.
ioctl(): No such device or address
ioctl returned -1

DDC/CI at dev:/dev/i2c-4 is unusable (-1).
If your graphics card need it, please check all the required kernel
modules are loaded (i2c-dev, and your framebuffer driver).

Any further hints?

Thanks and best regards,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl2TO+EACgkQMOfwapXb+vIh4QCdFDvDzV3QA1YJOk5R9U6nxemF
HEsAnjEXcNYjfaMOB2RxofefvCvrZxEe
=yDeJ
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--

--===============1378816626==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1378816626==--
