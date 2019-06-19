Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4CA4BE6A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 18:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB8A6E43A;
	Wed, 19 Jun 2019 16:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 493 seconds by postgrey-1.36 at gabe;
 Wed, 19 Jun 2019 16:39:46 UTC
Received: from smtprelay.hostedemail.com (smtprelay0180.hostedemail.com
 [216.40.44.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104516E43A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 16:39:46 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 5B1A91801FA39
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 16:31:33 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id D3FFA1801A0B4;
 Wed, 19 Jun 2019 16:31:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 
X-HE-Tag: cakes27_80e37c98d9d58
X-Filterd-Recvd-Size: 3106
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Wed, 19 Jun 2019 16:31:25 +0000 (UTC)
Message-ID: <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Alastair D'Silva <alastair@au1.ibm.com>, alastair@d-silva.org
Date: Wed, 19 Jun 2019 09:31:24 -0700
In-Reply-To: <20190617020430.8708-1-alastair@au1.ibm.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 0/7] Hexdump Enhancements
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, linux-fsdevel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, netdev@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA2LTE3IGF0IDEyOjA0ICsxMDAwLCBBbGFzdGFpciBEJ1NpbHZhIHdyb3Rl
Ogo+IEZyb206IEFsYXN0YWlyIEQnU2lsdmEgPGFsYXN0YWlyQGQtc2lsdmEub3JnPgo+IAo+IEFw
b2xvZ2llcyBmb3IgdGhlIGxhcmdlIENDIGxpc3QsIGl0J3MgYSBoZWFkcyB1cCBmb3IgdGhvc2Ug
cmVzcG9uc2libGUKPiBmb3Igc3Vic3lzdGVtcyB3aGVyZSBhIHByb3RvdHlwZSBjaGFuZ2UgaW4g
Z2VuZXJpYyBjb2RlIGNhdXNlcyBhIGNoYW5nZQo+IGluIHRob3NlIHN1YnN5c3RlbXMuCj4gCj4g
VGhpcyBzZXJpZXMgZW5oYW5jZXMgaGV4ZHVtcC4KClN0aWxsIG5vdCBhIGZhbiBvZiB0aGVzZSBw
YXRjaGVzLgoKPiBUaGVzZSBpbXByb3ZlIHRoZSByZWFkYWJpbGl0eSBvZiB0aGUgZHVtcGVkIGRh
dGEgaW4gY2VydGFpbiBzaXR1YXRpb25zCj4gKGVnLiB3aWRlIHRlcm1pbmFscyBhcmUgYXZhaWxh
YmxlLCBtYW55IGxpbmVzIG9mIGVtcHR5IGJ5dGVzIGV4aXN0LCBldGMpLgoKQ2hhbmdpbmcgaGV4
ZHVtcCdzIGxhc3QgYXJndW1lbnQgZnJvbSBib29sIHRvIGludCBpcyBvZGQuCgpQZXJoYXBzIGEg
bmV3IGZ1bmN0aW9uIHNob3VsZCBiZSBhZGRlZCBpbnN0ZWFkIG9mIGNoYW5naW5nCnRoZSBleGlz
dGluZyBoZXhkdW1wLgoKPiBUaGUgZGVmYXVsdCBiZWhhdmlvdXIgb2YgaGV4ZHVtcCBpcyB1bmNo
YW5nZWQsIGhvd2V2ZXIsIHRoZSBwcm90b3R5cGUKPiBmb3IgaGV4X2R1bXBfdG9fYnVmZmVyKCkg
aGFzIGNoYW5nZWQsIGFuZCBwcmludF9oZXhfZHVtcCgpIGhhcyBiZWVuCj4gcmVuYW1lZCB0byBw
cmludF9oZXhfZHVtcF9leHQoKSwgd2l0aCBhIHdyYXBwZXIgcmVwbGFjaW5nIGl0IGZvcgo+IGNv
bXBhdGliaWxpdHkgd2l0aCBleGlzdGluZyBjb2RlLCB3aGljaCB3b3VsZCBoYXZlIGJlZW4gdG9v
IGludmFzaXZlIHRvCj4gY2hhbmdlLgo+IAo+IEhleGR1bXAgc2VsZnRlc3RzIGhhdmUgYmUgcnVu
ICYgY29uZmlybWVkIHBhc3NlZC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
