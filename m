Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F6357FD9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D416E0BF;
	Thu, 27 Jun 2019 10:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168966E0BF;
 Thu, 27 Jun 2019 10:02:29 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id AB54B261136
To: "Ser, Simon" <simon.ser@intel.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>,
 "Latvala, Petri" <petri.latvala@intel.com>
References: <20190618124221.62715-1-guillaume.tucker@collabora.com>
 <e166f58e-f7e2-f6a5-d78d-40cf1b6692db@collabora.com>
 <b59592bb3795f5aa6e48bdd6477b8ea0c0db6beb.camel@intel.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <58f2692b-416e-fbdb-646e-b9f0e4fceaf4@collabora.com>
Date: Thu, 27 Jun 2019 11:02:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <b59592bb3795f5aa6e48bdd6477b8ea0c0db6beb.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 1/1] gitlab-ci: add build and tests
 for MIPS
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjcvMDYvMjAxOSAwODowMiwgU2VyLCBTaW1vbiB3cm90ZToKPiBPbiBUdWUsIDIwMTktMDYt
MjUgYXQgMTQ6MDggKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6Cj4+IE9uIDE4LzA2LzIw
MTkgMTM6NDIsIEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6Cj4+PiBBZGQgRG9ja2VyIGltYWdlIGFu
ZCBHaXRsYWIgQ0kgc3RlcHMgdG8gcnVuIGJ1aWxkcyBhbmQgdGVzdHMgZm9yCj4+PiB0aGUKPj4+
IE1JUFMgYXJjaGl0ZWN0dXJlIHVzaW5nIERlYmlhbiBTdHJldGNoIHdpdGggYmFja3BvcnRzLgo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJA
Y29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4KPj4+IE5vdGVzOgo+Pj4gICAgIHYyOiB1c2Ugc3Ry
ZXRjaC1iYWNrcG9ydHMgYW5kIHJlcXVpcmUgbGliYXRvbWljMQo+Pj4gICAgIHYzOiBhZGQgbWlw
cyBjaSB0ZXN0cyBhbmQgcmVxdWlyZSBEZWJpYW4gbGliYXRvbWljMSBmb3IgbWlwcwo+Pgo+PiBU
aGUgc2VyaWVzIHRvIHVzZSBwb3J0YWJsZSBhdG9taWNzIGZ1bmN0aW9ucyB3YXMgbWVyZ2VkIHRv
ZGF5LCBzbwo+PiBJIHRoaW5rIHRoaXMgb25lIHNob3VsZCBub3cgYmUgZ29vZCB0byBnbyBhcyB3
ZWxsLiAgSXQgYXBwbGllcwo+PiBjbGVhbmx5IG9uIHRvcCBvZiB0aGUgY3VycmVudCBtYXN0ZXIg
YnJhbmNoIGFuZCB0aGUgR2l0bGFiIENJCj4+IHBpcGVsaW5lIHBhc3NlZDoKPj4KPj4gICAKPj4g
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2d0dWNrZXIvaWd0LWdwdS10b29scy9waXBl
bGluZXMvNDQ3MDQKPj4KPj4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSB3YW50IG1lIHRvIHJl
c3VibWl0IGl0IHRvIGdldCBhbm90aGVyCj4+IFBhdGNod29yayBDSSBydW4gb3IgaWYgYW55dGhp
bmcgZWxzZSBuZWVkcyB0byBiZSBkb25lLgo+IAo+IExHVE0hCj4gCj4gUmV2aWV3ZWQtYnk6IFNp
bW9uIFNlciA8c2ltb24uc2VyQGludGVsLmNvbT4KPiAKPiBBbmQgcHVzaGVkOgo+IAo+IFRvIGdp
dGxhYi5mcmVlZGVza3RvcC5vcmc6ZHJtL2lndC1ncHUtdG9vbHMuZ2l0Cj4gICAgMTVhZDY2NDUz
NDQxLi40MzlhOWY1ZDYxNWYgIG1hc3RlciAtPiBtYXN0ZXIKClRoYW5rcyEKCkVyciwgaG93ZXZl
ciBpdCBsb29rcyBsaWtlIHlvdSBwdXNoZWQgdGhlIHYyIHdoaWNoIGhhZCBvbmx5CmJ1aWxkcyBy
YXRoZXIgdGhhbiB0aGlzIHYzIHdoaWNoIGRvZXMgYnVpbGRzIGFuZCB0ZXN0czoKCiAgNDM5YTlm
NWQ2MTVmIGdpdGxhYi1jaTogYWRkIGJ1aWxkIGZvciBNSVBTCgpJJ3ZlIG1hZGUgYW5vdGhlciBw
YXRjaCB3aXRoIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdjIgYW5kIHYzIGFuZApwdXNoZWQgaXQg
dG8gbXkgYnJhbmNoOgoKICBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3R1Y2tlci9p
Z3QtZ3B1LXRvb2xzL2NvbW1pdC85NjkzZTI4ODcxZjI3ZWZiNzM0MGFkMjlkNTRkZTRiZTdiNTQ2
MWE5CgpJJ2xsIHdhaXQgZm9yIHRoZSBHaXRsYWIgQ0kgcGlwZWxpbmUgdG8gY29tcGxldGUgYW5k
IHRoZW4gSSBndWVzcwpJIHNob3VsZCBzZW5kIHRoYXQgdG8gdGhlIG1haWxpbmcgbGlzdC4KCkd1
aWxsYXVtZQoKPj4+ICAuZ2l0bGFiLWNpLnltbCAgICAgICAgIHwgNDIKPj4+ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gIERvY2tlcmZpbGUuZGViaWFuLW1p
cHMgfCAzOQo+Pj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+PiAg
bWVzb24tY3Jvc3MtbWlwcy50eHQgICB8IDEyICsrKysrKysrKysrKwo+Pj4gIDMgZmlsZXMgY2hh
bmdlZCwgOTMgaW5zZXJ0aW9ucygrKQo+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2NrZXJmaWxl
LmRlYmlhbi1taXBzCj4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1lc29uLWNyb3NzLW1pcHMudHh0
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55bWwKPj4+
IGluZGV4IDc3MTE0M2E5ZWE5NS4uYmQ5NjE5ZTdlMjhiIDEwMDY0NAo+Pj4gLS0tIGEvLmdpdGxh
Yi1jaS55bWwKPj4+ICsrKyBiLy5naXRsYWItY2kueW1sCj4+PiBAQCAtOTAsNiArOTAsMTcgQEAg
YnVpbGQ6dGVzdHMtZGViaWFuLW1lc29uLWFybTY0Ogo+Pj4gICAgICBwYXRoczoKPj4+ICAgICAg
ICAtIGJ1aWxkCj4+PiAgCj4+PiArYnVpbGQ6dGVzdHMtZGViaWFuLW1lc29uLW1pcHM6Cj4+PiAr
ICBpbWFnZTogJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0LWRlYmlhbi1taXBzOmxh
dGVzdAo+Pj4gKyAgc3RhZ2U6IGJ1aWxkCj4+PiArICBzY3JpcHQ6Cj4+PiArICAgIC0gZXhwb3J0
IFBLR19DT05GSUdfUEFUSD0vdXNyL2xpYi9taXBzLWxpbnV4LWdudS9wa2djb25maWcvCj4+PiAr
ICAgIC0gbWVzb24gLS1jcm9zcy1maWxlIG1lc29uLWNyb3NzLW1pcHMudHh0IGJ1aWxkCj4+PiAr
ICAgIC0gbmluamEgLUMgYnVpbGQKPj4+ICsgIGFydGlmYWN0czoKPj4+ICsgICAgcGF0aHM6Cj4+
PiArICAgICAgLSBidWlsZAo+Pj4gKwo+Pj4gIGJ1aWxkOnRlc3RzLWRlYmlhbi1hdXRvdG9vbHM6
Cj4+PiAgICBpbWFnZTogJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0LWRlYmlhbjps
YXRlc3QKPj4+ICAgIHN0YWdlOiBidWlsZAo+Pj4gQEAgLTE0NSw2ICsxNTYsMjAgQEAgdGVzdDpu
aW5qYS10ZXN0LWFybWhmOgo+Pj4gICAgICAgIC0gYnVpbGQKPj4+ICAgICAgd2hlbjogb25fZmFp
bHVyZQo+Pj4gIAo+Pj4gK3Rlc3Q6bmluamEtdGVzdC1taXBzOgo+Pj4gKyAgaW1hZ2U6ICRDSV9S
RUdJU1RSWS8kQ0lfUFJPSkVDVF9QQVRIL2lndC1kZWJpYW4tbWlwczpsYXRlc3QKPj4+ICsgIGRl
cGVuZGVuY2llczoKPj4+ICsgICAgLSBidWlsZDp0ZXN0cy1kZWJpYW4tbWVzb24tbWlwcwo+Pj4g
KyAgc3RhZ2U6IHRlc3QKPj4+ICsgIHNjcmlwdDoKPj4+ICsgICAgLSBleHBvcnQgUEtHX0NPTkZJ
R19QQVRIPS91c3IvbGliL21pcHMtbGludXgtZ251L3BrZ2NvbmZpZy8KPj4+ICsgICAgLSBlbnYg
PiBidWlsZC9lbnZkdW1wLnR4dAo+Pj4gKyAgICAtIG5pbmphIC1DIGJ1aWxkIHRlc3QKPj4+ICsg
IGFydGlmYWN0czoKPj4+ICsgICAgcGF0aHM6Cj4+PiArICAgICAgLSBidWlsZAo+Pj4gKyAgICB3
aGVuOiBvbl9mYWlsdXJlCj4+PiArCj4+PiAgdGVzdDp0ZXN0LWxpc3QtZGlmZjoKPj4+ICAgIGRl
cGVuZGVuY2llczoKPj4+ICAgICAgLSBidWlsZDp0ZXN0cy1kZWJpYW4tYXV0b3Rvb2xzCj4+PiBA
QCAtMjIxLDYgKzI0NiwyMyBAQCBjb250YWluZXJzOmlndC1kZWJpYW4tYXJtNjQ6Cj4+PiAgICAg
IC0gZG9ja2VyIGJ1aWxkIC10ICRDSV9SRUdJU1RSWS8kQ0lfUFJPSkVDVF9QQVRIL2lndC1kZWJp
YW4tCj4+PiBhcm02NCAtZiBEb2NrZXJmaWxlLmRlYmlhbi1hcm02NCAuCj4+PiAgICAgIC0gZG9j
a2VyIHB1c2ggJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0LWRlYmlhbi1hcm02NAo+
Pj4gIAo+Pj4gK2NvbnRhaW5lcnM6aWd0LWRlYmlhbi1taXBzOgo+Pj4gKyAgc3RhZ2U6IGNvbnRh
aW5lcnMKPj4+ICsgIGltYWdlOiBkb2NrZXI6c3RhYmxlCj4+PiArICBvbmx5Ogo+Pj4gKyAgICBj
aGFuZ2VzOgo+Pj4gKyAgICAgIC0gRG9ja2VyZmlsZS5kZWJpYW4tbWlwcwo+Pj4gKyAgICAgIC0g
LmdpdGxhYi1jaS55bWwKPj4+ICsgIHNlcnZpY2VzOgo+Pj4gKyAgICAtIGRvY2tlcjpkaW5kCj4+
PiArICB2YXJpYWJsZXM6Cj4+PiArICAgIERPQ0tFUl9IT1NUOiB0Y3A6Ly9kb2NrZXI6MjM3NQo+
Pj4gKyAgICBET0NLRVJfRFJJVkVSOiBvdmVybGF5Mgo+Pj4gKyAgc2NyaXB0Ogo+Pj4gKyAgICAt
IGRvY2tlciBsb2dpbiAtdSBnaXRsYWItY2ktdG9rZW4gLXAgJENJX0pPQl9UT0tFTgo+Pj4gJENJ
X1JFR0lTVFJZCj4+PiArICAgIC0gZG9ja2VyIGJ1aWxkIC10ICRDSV9SRUdJU1RSWS8kQ0lfUFJP
SkVDVF9QQVRIL2lndC1kZWJpYW4tCj4+PiBtaXBzIC1mIERvY2tlcmZpbGUuZGViaWFuLW1pcHMg
Lgo+Pj4gKyAgICAtIGRvY2tlciBwdXNoICRDSV9SRUdJU1RSWS8kQ0lfUFJPSkVDVF9QQVRIL2ln
dC1kZWJpYW4tbWlwcwo+Pj4gKwo+Pj4gIGNvbnRhaW5lcnM6aWd0LWZlZG9yYToKPj4+ICAgIHN0
YWdlOiBjb250YWluZXJzCj4+PiAgICBpbWFnZTogZG9ja2VyOnN0YWJsZQo+Pj4gZGlmZiAtLWdp
dCBhL0RvY2tlcmZpbGUuZGViaWFuLW1pcHMgYi9Eb2NrZXJmaWxlLmRlYmlhbi1taXBzCj4+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5lZTI5ZjVmNGNjZGEK
Pj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL0RvY2tlcmZpbGUuZGViaWFuLW1pcHMKPj4+IEBA
IC0wLDAgKzEsMzkgQEAKPj4+ICtGUk9NIGRlYmlhbjpzdHJldGNoLWJhY2twb3J0cwo+Pj4gKwo+
Pj4gK1JVTiBhcHQtZ2V0IHVwZGF0ZQo+Pj4gK1JVTiBhcHQtZ2V0IGluc3RhbGwgLXkgXAo+Pj4g
KwkJCWZsZXggXAo+Pj4gKwkJCWJpc29uIFwKPj4+ICsJCQlwa2ctY29uZmlnIFwKPj4+ICsJCQl4
MTFwcm90by1kcmkyLWRldiBcCj4+PiArCQkJcHl0aG9uLWRvY3V0aWxzIFwKPj4+ICsJCQl2YWxn
cmluZCBcCj4+PiArCQkJcGVnCj4+PiArCj4+PiArUlVOIGRwa2cgLS1hZGQtYXJjaGl0ZWN0dXJl
IG1pcHMKPj4+ICtSVU4gYXB0LWdldCB1cGRhdGUKPj4+ICtSVU4gYXB0LWdldCBpbnN0YWxsIC15
IFwKPj4+ICsJCQlnY2MtbWlwcy1saW51eC1nbnUgXAo+Pj4gKwkJCWxpYmF0b21pYzE6bWlwcyBc
Cj4+PiArCQkJbGlicGNpYWNjZXNzLWRldjptaXBzIFwKPj4+ICsJCQlsaWJrbW9kLWRldjptaXBz
IFwKPj4+ICsJCQlsaWJwcm9jcHMtZGV2Om1pcHMgXAo+Pj4gKwkJCWxpYnVud2luZC1kZXY6bWlw
cyBcCj4+PiArCQkJbGliZHctZGV2Om1pcHMgXAo+Pj4gKwkJCXpsaWIxZy1kZXY6bWlwcyBcCj4+
PiArCQkJbGlibHptYS1kZXY6bWlwcyBcCj4+PiArCQkJbGliY2Fpcm8tZGV2Om1pcHMgXAo+Pj4g
KwkJCWxpYnBpeG1hbi0xLWRldjptaXBzIFwKPj4+ICsJCQlsaWJ1ZGV2LWRldjptaXBzIFwKPj4+
ICsJCQlsaWJnc2wtZGV2Om1pcHMgXAo+Pj4gKwkJCWxpYmFzb3VuZDItZGV2Om1pcHMgXAo+Pj4g
KwkJCWxpYmpzb24tYy1kZXY6bWlwcyBcCj4+PiArCQkJbGliY3VybDQtb3BlbnNzbC1kZXY6bWlw
cyBcCj4+PiArCQkJbGlieHJhbmRyLWRldjptaXBzIFwKPj4+ICsJCQlsaWJ4di1kZXY6bWlwcwo+
Pj4gKwo+Pj4gK1JVTiBhcHQtZ2V0IGluc3RhbGwgLXQgc3RyZXRjaC1iYWNrcG9ydHMgLXkgXAo+
Pj4gKwkJCW1lc29uIFwKPj4+ICsJCQlsaWJkcm0tZGV2Om1pcHMgXAo+Pj4gKwkJCXFlbXUtdXNl
ciBcCj4+PiArCQkJcWVtdS11c2VyLXN0YXRpYwo+Pj4gZGlmZiAtLWdpdCBhL21lc29uLWNyb3Nz
LW1pcHMudHh0IGIvbWVzb24tY3Jvc3MtbWlwcy50eHQKPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjYzNTBkNjc3ZTBiYwo+Pj4gLS0tIC9kZXYvbnVsbAo+
Pj4gKysrIGIvbWVzb24tY3Jvc3MtbWlwcy50eHQKPj4+IEBAIC0wLDAgKzEsMTIgQEAKPj4+ICtb
YmluYXJpZXNdCj4+PiArYyA9ICcvdXNyL2Jpbi9taXBzLWxpbnV4LWdudS1nY2MnCj4+PiArYXIg
PSAnL3Vzci9iaW4vbWlwcy1saW51eC1nbnUtZ2NjLWFyJwo+Pj4gK3N0cmlwID0gJy91c3IvYmlu
L21pcHMtbGludXgtZ251LXN0cmlwJwo+Pj4gK3BrZ2NvbmZpZyA9ICdwa2ctY29uZmlnJwo+Pj4g
K2V4ZV93cmFwcGVyID0gJ3FlbXUtbWlwcycKPj4+ICsKPj4+ICtbaG9zdF9tYWNoaW5lXQo+Pj4g
K3N5c3RlbSA9ICdsaW51eCcKPj4+ICtjcHVfZmFtaWx5ID0gJ21pcHMnCj4+PiArY3B1ID0gJ21p
cHMnCj4+PiArZW5kaWFuID0gJ2JpZycKPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
