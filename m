Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D74FA74033
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 22:39:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DFC46E656;
	Wed, 24 Jul 2019 20:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net
 [194.109.24.30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DAF66E656
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 20:39:44 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud9.xs4all.net with ESMTPSA
 id qO30hK1x20QvJqO34hAGd1; Wed, 24 Jul 2019 22:39:42 +0200
Message-ID: <df4d83e5c5650ea2f1afde1469c9dc82d6120644.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: "Souza, Jose" <jose.souza@intel.com>, 
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Wed, 24 Jul 2019 22:39:38 +0200
In-Reply-To: <d084df248afc1943e06c50d391a775d117064743.camel@intel.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
 <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
 <1562876880.2840.12.camel@HansenPartnership.com>
 <1562882235.13723.1.camel@HansenPartnership.com>
 <dad073fb4b06cf0abb7ab702a9474b9c443186eb.camel@intel.com>
 <1562884722.15001.3.camel@HansenPartnership.com>
 <2c4edfabf49998eb5da3a6adcabc006eb64bfe90.camel@tiscali.nl>
 <55f4d1c242d684ca2742e8c14613d810a9ee9504.camel@intel.com>
 <1562888433.2915.0.camel@HansenPartnership.com>
 <1562941185.3398.1.camel@HansenPartnership.com>
 <68472c5f390731e170221809a12d88cb3bc6460e.camel@tiscali.nl>
 <143142cad4a946361a0bf285b6f1701c81096c7b.camel@intel.com>
 <595d9bc87bf47717c8675eb5b1a1cbb2bc463752.camel@tiscali.nl>
 <a10f009fc160f05077760ff59cd86a9c99006b39.camel@intel.com>
 <9ef8fc1ae2c3a9bad588899488a781333af4449a.camel@tiscali.nl>
 <1563398966.3438.5.camel@HansenPartnership.com>
 <b22cf290b089cb1174ec0fdeb15bdf2e90bf51dc.camel@tiscali.nl>
 <d084df248afc1943e06c50d391a775d117064743.camel@intel.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfMGhzXSvgUU6XdTF2WME9sHm/ITasHYUkyDSQ+HTRlbfpg+ZiZbVxTBRJpE+6Ypg2M6EAsrdBFp9DJQ0oHEsqlJVUyaJqIkE61EIzYAQ6OgLTo8wl7na
 5+oq/sr5kEUpv4nwWTbxHVqHOovCOZQPfjUm8vEPeCdQUHo8VeesqX3dn528mxW2mhYG8m5Xq9xIG+GjAQFYmsl/EFlclZUuAFxhfd4JN9lhu0qYQeQRhWo2
 TFOKIiTNMC36vJSO91CJlwlggoi7Bwp56MgCtEgOW3RkJI6TTLQGdt3ocloYjEy4qJ7qJEiE722E2lE3cfxFZGQfe1TmwGVTPtEnWx4QWRk=
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSm9zZSwKClNvdXphLCBKb3NlIHNjaHJlZWYgb3Agd28gMjQtMDctMjAxOSBvbSAyMDoyNyBb
KzAwMDBdOgo+IFdlIGZpeGVkIHRoZSBwYXRjaCBpbnN0ZWFkIG9mIHJldmVydCBpdCwgaXQgaXMg
bWVyZ2VkIG9uIGRybS10aXAgYW5kIG9uCj4gaGlzIHdheSB0byBsaW51eC1zdGFibGUuCgpUaGF0
IHNob3VsZCBiZSAoZHJtLXRpcCkgY29tbWl0IGI1ZWE5YzkzMzcwMCAoImRybS9pOTE1L3ZidDog
Rml4IFZCVCBwYXJzaW5nCmZvciB0aGUgUFNSIHNlY3Rpb24iKS4gQ29ycmVjdD8KCj4gSHVnZSB0
aGFua3MgYWdhaW4KCllvdSdyZSB3ZWxjb21lLgoKClBhdWwgQm9sbGUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
