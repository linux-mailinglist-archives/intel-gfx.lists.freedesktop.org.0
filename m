Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E016DE2EBE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 12:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22E8C6E1F5;
	Thu, 24 Oct 2019 10:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85A656E1F5;
 Thu, 24 Oct 2019 10:24:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7EFE5A0138;
 Thu, 24 Oct 2019 10:24:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Thu, 24 Oct 2019 10:24:44 -0000
Message-ID: <20191024102444.27073.90145@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191023093821.3350-1-andi.shyti@intel.com>
In-Reply-To: <20191023093821.3350-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Extr?=
 =?utf-8?q?act_rps_and_guc?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRXh0cmFjdCBycHMgYW5kIGd1YwpVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg0NDkvClN0YXRlIDog
ZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1f
NzE2Ml9mdWxsIC0+IFBhdGNod29ya18xNDk0NV9mdWxsCj09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KClN1bW1hcnkKLS0tLS0tLQoKICAqKkZBSUxV
UkUqKgoKICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ5
NDVfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKICB2ZXJpZmllZCBtYW51YWxseS4KICAKICBJ
ZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGgg
dGhlIGNoYW5nZXMKICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDk0NV9mdWxsLCBwbGVhc2Ug
bm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQogIHRvIGRvY3VtZW50IHRoaXMgbmV3
IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLgoK
ICAKClBvc3NpYmxlIG5ldyBpc3N1ZXMKLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBIZXJlIGFyZSB0
aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18xNDk0NV9mdWxsOgoKIyMjIElHVCBjaGFuZ2VzICMjIwoKIyMjIyBQb3NzaWJsZSByZWdy
ZXNzaW9ucyAjIyMjCgogICogaWd0QGk5MTVfcG1fcnBzQG1pbi1tYXgtY29uZmlnLWlkbGU6CiAg
ICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzFdIC0+IFtGQUlMXVsyXQogICBbMV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQt
a2JsMy9pZ3RAaTkxNV9wbV9ycHNAbWluLW1heC1jb25maWctaWRsZS5odG1sCiAgIFsyXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hh
cmQta2JsMy9pZ3RAaTkxNV9wbV9ycHNAbWluLW1heC1jb25maWctaWRsZS5odG1sCiAgICAtIHNo
YXJkLWFwbDogICAgICAgICAgW1BBU1NdWzNdIC0+IFtGQUlMXVs0XQogICBbM106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQtYXBsNi9p
Z3RAaTkxNV9wbV9ycHNAbWluLW1heC1jb25maWctaWRsZS5odG1sCiAgIFs0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQtYXBs
Ni9pZ3RAaTkxNV9wbV9ycHNAbWluLW1heC1jb25maWctaWRsZS5odG1sCiAgICAtIHNoYXJkLWds
azogICAgICAgICAgW1BBU1NdWzVdIC0+IFtGQUlMXVs2XQogICBbNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQtZ2xrOS9pZ3RAaTkx
NV9wbV9ycHNAbWluLW1heC1jb25maWctaWRsZS5odG1sCiAgIFs2XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQtZ2xrOS9pZ3RA
aTkxNV9wbV9ycHNAbWluLW1heC1jb25maWctaWRsZS5odG1sCiAgICAtIHNoYXJkLWljbGI6ICAg
ICAgICAgW1BBU1NdWzddIC0+IFtGQUlMXVs4XSArMSBzaW1pbGFyIGlzc3VlCiAgIFs3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1p
Y2xiOC9pZ3RAaTkxNV9wbV9ycHNAbWluLW1heC1jb25maWctaWRsZS5odG1sCiAgIFs4XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hh
cmQtaWNsYjUvaWd0QGk5MTVfcG1fcnBzQG1pbi1tYXgtY29uZmlnLWlkbGUuaHRtbAogICAgLSBz
aGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbRkFJTF1bMTBdCiAgIFs5XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1zbmI1
L2lndEBpOTE1X3BtX3Jwc0BtaW4tbWF4LWNvbmZpZy1pZGxlLmh0bWwKICAgWzEwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQt
c25iNS9pZ3RAaTkxNV9wbV9ycHNAbWluLW1heC1jb25maWctaWRsZS5odG1sCgogICogaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZV9yZXF1ZXN0czoKICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbUEFT
U11bMTFdIC0+IFtETUVTRy1XQVJOXVsxMl0KICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1za2w0L2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfcmVxdWVzdHMuaHRtbAogICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1za2w1L2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVfcmVxdWVzdHMuaHRtbAoKICAKIyMjIyBTdXBwcmVzc2VkICMjIyMKCiAgVGhlIGZv
bGxvd2luZyByZXN1bHRzIGNvbWUgZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRlc3RzLCBvciBz
dGF0dXNlcy4KICBUaGV5IGRvIG5vdCBhZmZlY3QgdGhlIG92ZXJhbGwgcmVzdWx0LgoKICAqIGln
dEBrbXNfZHJhd19jcmNAZHJhdy1tZXRob2QteHJnYjg4ODgtcHdyaXRlLXl0aWxlZDoKICAgIC0g
e3NoYXJkLXRnbGJ9OiAgICAgICBbUEFTU11bMTNdIC0+IFtJTkNPTVBMRVRFXVsxNF0KICAgWzEz
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9z
aGFyZC10Z2xiNC9pZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhyZ2I4ODg4LXB3cml0ZS15
dGlsZWQuaHRtbAogICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC10Z2xiNC9pZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0
aG9kLXhyZ2I4ODg4LXB3cml0ZS15dGlsZWQuaHRtbAoKICAKS25vd24gaXNzdWVzCi0tLS0tLS0t
LS0tLQoKICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQ5NDVfZnVs
bCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6CgojIyMgSUdUIGNoYW5nZXMgIyMjCgojIyMj
IElzc3VlcyBoaXQgIyMjIwoKICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkByY3MwLXMzOgogICAg
LSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsxNV0gLT4gW0RNRVNHLVdBUk5dWzE2XSAoW2Zk
byMxMDg1NjZdKSArNCBzaW1pbGFyIGlzc3VlcwogICBbMTVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTYyL3NoYXJkLWtibDEvaWd0QGdlbV9jdHhf
aXNvbGF0aW9uQHJjczAtczMuaHRtbAogICBbMTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1rYmwxL2lndEBnZW1fY3R4X2lz
b2xhdGlvbkByY3MwLXMzLmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1kaXJ0
eS1zd2l0Y2g6CiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzE3XSAtPiBbU0tJUF1b
MThdIChbZmRvIzEwOTI3Nl0gLyBbZmRvIzExMjA4MF0pCiAgIFsxN106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQtaWNsYjQvaWd0QGdl
bV9jdHhfaXNvbGF0aW9uQHZjczEtZGlydHktc3dpdGNoLmh0bWwKICAgWzE4XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQtaWNs
YjYvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtZGlydHktc3dpdGNoLmh0bWwKCiAgKiBpZ3RA
Z2VtX2Vpb0Bpbi1mbGlnaHQtMXVzOgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVsx
OV0gLT4gW0lOQ09NUExFVEVdWzIwXSAoW2ZkbyMxMDU0MTFdKSArMSBzaW1pbGFyIGlzc3VlCiAg
IFsxOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcx
NjIvc2hhcmQtc25iNC9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtMXVzLmh0bWwKICAgWzIwXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hh
cmQtc25iNy9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtMXVzLmh0bWwKCiAgKiBpZ3RAZ2VtX2Vpb0Bp
bi1mbGlnaHQtaW50ZXJuYWwtMTBtczoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11b
MjFdIC0+IFtTS0lQXVsyMl0gKFtmZG8jMTA5MjcxXSkgKzUgc2ltaWxhciBpc3N1ZXMKICAgWzIx
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9z
aGFyZC1oc3c2L2lndEBnZW1fZWlvQGluLWZsaWdodC1pbnRlcm5hbC0xMG1zLmh0bWwKICAgWzIy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5
NDUvc2hhcmQtaHN3NC9pZ3RAZ2VtX2Vpb0Bpbi1mbGlnaHQtaW50ZXJuYWwtMTBtcy5odG1sCgog
ICogaWd0QGdlbV9laW9AdW53ZWRnZS1zdHJlc3M6CiAgICAtIHNoYXJkLXNuYjogICAgICAgICAg
W1BBU1NdWzIzXSAtPiBbU0tJUF1bMjRdIChbZmRvIzEwOTI3MV0pICszIHNpbWlsYXIgaXNzdWVz
CiAgIFsyM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcxNjIvc2hhcmQtc25iNS9pZ3RAZ2VtX2Vpb0B1bndlZGdlLXN0cmVzcy5odG1sCiAgIFsyNF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTQ1
L3NoYXJkLXNuYjQvaWd0QGdlbV9laW9AdW53ZWRnZS1zdHJlc3MuaHRtbAoKICAqIGlndEBnZW1f
ZXhlY19iYWxhbmNlckBzbW9rZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjVd
IC0+IFtTS0lQXVsyNl0gKFtmZG8jMTEwODU0XSkKICAgWzI1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4
ZWNfYmFsYW5jZXJAc21va2UuaHRtbAogICBbMjZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNf
YmFsYW5jZXJAc21va2UuaHRtbAoKICAqIGlndEBnZW1fZXhlY19wYXJhbGxlbEB2Y3MxLWZkczoK
ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMjddIC0+IFtTS0lQXVsyOF0gKFtmZG8j
MTEyMDgwXSkgKzcgc2ltaWxhciBpc3N1ZXMKICAgWzI3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4ZWNf
cGFyYWxsZWxAdmNzMS1mZHMuaHRtbAogICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNf
cGFyYWxsZWxAdmNzMS1mZHMuaHRtbAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0
aXZlLWhhbmctYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyOV0gLT4gW1NL
SVBdWzMwXSAoW2ZkbyMxMTEzMjVdKSArNCBzaW1pbGFyIGlzc3VlcwogICBbMjldOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTYyL3NoYXJkLWljbGIz
L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0aXZlLWhhbmctYnNkLmh0bWwKICAgWzMwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUv
c2hhcmQtaWNsYjEvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHRpdmUtaGFuZy1ic2QuaHRt
bAoKICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwcm9tb3Rpb24tYnNkMToKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbUEFTU11bMzFdIC0+IFtTS0lQXVszMl0gKFtmZG8jMTA5Mjc2XSkgKzgg
c2ltaWxhciBpc3N1ZXMKICAgWzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJv
bW90aW9uLWJzZDEuaHRtbAogICBbMzJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1pY2xiMy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1
bGVAcHJvbW90aW9uLWJzZDEuaHRtbAoKICAqIGlndEBnZW1fcHdyaXRlQGJpZy1jcHUtcmFuZG9t
OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVszM10gLT4gW0lOQ09NUExFVEVdWzM0
XSAoW2ZkbyMxMDc3MTNdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFszM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQtaWNsYjYvaWd0QGdl
bV9wd3JpdGVAYmlnLWNwdS1yYW5kb20uaHRtbAogICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1pY2xiNy9pZ3RAZ2Vt
X3B3cml0ZUBiaWctY3B1LXJhbmRvbS5odG1sCgogICogaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2Mt
czM6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzM1XSAtPiBbSU5DT01QTEVURV1b
MzZdIChbZmRvIzEwNDEwOF0pCiAgIFszNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQtc2tsOC9pZ3RAZ2VtX3NvZnRwaW5Abm9yZWxv
Yy1zMy5odG1sCiAgIFszNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0OTQ1L3NoYXJkLXNrbDIvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMu
aHRtbAoKICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1idXN5
LWd1cDoKICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBbUEFTU11bMzddIC0+IFtETUVTRy1XQVJO
XVszOF0gKFtmZG8jMTExODcwXSkKICAgWzM3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1oc3c4L2lndEBnZW1fdXNlcnB0cl9ibGl0
c0BtYXAtZml4ZWQtaW52YWxpZGF0ZS1idXN5LWd1cC5odG1sCiAgIFszOF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTQ1L3NoYXJkLWhzdzQv
aWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1c3ktZ3VwLmh0bWwK
CiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1i
dXN5OgogICAgLSBzaGFyZC1zbmI6ICAgICAgICAgIFtQQVNTXVszOV0gLT4gW0RNRVNHLVdBUk5d
WzQwXSAoW2ZkbyMxMTE4NzBdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFszOV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQtc25iNS9pZ3RA
Z2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFsaWRhdGUtb3ZlcmxhcC1idXN5Lmh0bWwK
ICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ5NDUvc2hhcmQtc25iNC9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVkLWludmFs
aWRhdGUtb3ZlcmxhcC1idXN5Lmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11
bm1hcC1jeWNsZXM6CiAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzQxXSAtPiBbSU5D
T01QTEVURV1bNDJdIChbZmRvIzEwMzkyN10pICszIHNpbWlsYXIgaXNzdWVzCiAgIFs0MV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQt
YXBsNy9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11bm1hcC1jeWNsZXMuaHRtbAogICBbNDJd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0
NS9zaGFyZC1hcGw0L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BzeW5jLXVubWFwLWN5Y2xlcy5odG1s
CgogICogaWd0QGk5MTVfcG1fcnBzQG1pbi1tYXgtY29uZmlnLWlkbGU6CiAgICAtIHNoYXJkLWhz
dzogICAgICAgICAgW1BBU1NdWzQzXSAtPiBbRkFJTF1bNDRdIChbZmRvIzEwMjI1MF0pICsxIHNp
bWlsYXIgaXNzdWUKICAgWzQzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1oc3cyL2lndEBpOTE1X3BtX3Jwc0BtaW4tbWF4LWNvbmZp
Zy1pZGxlLmh0bWwKICAgWzQ0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQtaHN3Mi9pZ3RAaTkxNV9wbV9ycHNAbWluLW1heC1j
b25maWctaWRsZS5odG1sCgogICogaWd0QGk5MTVfcG1fcnBzQG1pbi1tYXgtY29uZmlnLWxvYWRl
ZDoKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bNDVdIC0+IFtGQUlMXVs0Nl0gKFtm
ZG8jMTExNDA5XSkKICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1pY2xiNC9pZ3RAaTkxNV9wbV9ycHNAbWluLW1heC1jb25m
aWctbG9hZGVkLmh0bWwKICAgWzQ2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQtaWNsYjYvaWd0QGk5MTVfcG1fcnBzQG1pbi1t
YXgtY29uZmlnLWxvYWRlZC5odG1sCgogICogaWd0QGk5MTVfcG1fcnBzQHJlc2V0OgogICAgLSBz
aGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs0N10gLT4gW0ZBSUxdWzQ4XSAoW2ZkbyMxMDIyNTBd
IC8gW2ZkbyMxMTE0MDldKQogICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV83MTYyL3NoYXJkLWljbGI2L2lndEBpOTE1X3BtX3Jwc0ByZXNldC5o
dG1sCiAgIFs0OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0OTQ1L3NoYXJkLWljbGI4L2lndEBpOTE1X3BtX3Jwc0ByZXNldC5odG1sCgogICog
aWd0QGk5MTVfcG1fcnBzQHdhaXRib29zdDoKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbUEFT
U11bNDldIC0+IFtGQUlMXVs1MF0gKFtmZG8jMTAyMjUwXSkKICAgWzQ5XTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1zbmI2L2lndEBp
OTE1X3BtX3Jwc0B3YWl0Ym9vc3QuaHRtbAogICBbNTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1zbmIxL2lndEBpOTE1X3Bt
X3Jwc0B3YWl0Ym9vc3QuaHRtbAogICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVs1MV0g
LT4gW0ZBSUxdWzUyXSAoW2ZkbyMxMDIyNTBdKSArMSBzaW1pbGFyIGlzc3VlCiAgIFs1MV06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQt
c2tsNS9pZ3RAaTkxNV9wbV9ycHNAd2FpdGJvb3N0Lmh0bWwKICAgWzUyXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQtc2tsNS9p
Z3RAaTkxNV9wbV9ycHNAd2FpdGJvb3N0Lmh0bWwKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBb
UEFTU11bNTNdIC0+IFtGQUlMXVs1NF0gKFtmZG8jMTAyMjUwXSkgKzEgc2ltaWxhciBpc3N1ZQog
ICBbNTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MTYyL3NoYXJkLWdsazkvaWd0QGk5MTVfcG1fcnBzQHdhaXRib29zdC5odG1sCiAgIFs1NF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTQ1L3No
YXJkLWdsazIvaWd0QGk5MTVfcG1fcnBzQHdhaXRib29zdC5odG1sCiAgICAtIHNoYXJkLWtibDog
ICAgICAgICAgW1BBU1NdWzU1XSAtPiBbRkFJTF1bNTZdIChbZmRvIzEwMjI1MF0pCiAgIFs1NV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hh
cmQta2JsMi9pZ3RAaTkxNV9wbV9ycHNAd2FpdGJvb3N0Lmh0bWwKICAgWzU2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQta2Js
MS9pZ3RAaTkxNV9wbV9ycHNAd2FpdGJvb3N0Lmh0bWwKCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlX2dlbV9jb250ZXh0czoKICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbUEFTU11bNTddIC0+
IFtJTkNPTVBMRVRFXVs1OF0gKFtmZG8jMTAzMzU5XSAvIFtrLm9yZyMxOTgxMzNdKQogICBbNTdd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTYyL3No
YXJkLWdsazUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9nZW1fY29udGV4dHMuaHRtbAogICBbNThd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0
NS9zaGFyZC1nbGs2L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ2VtX2NvbnRleHRzLmh0bWwKCiAg
KiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjazoKICAgIC0gc2hhcmQtaHN3OiAgICAg
ICAgICBbUEFTU11bNTldIC0+IFtETUVTRy1GQUlMXVs2MF0gKFtmZG8jMTExOTkxXSkKICAgWzU5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9z
aGFyZC1oc3c0L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKICAgWzYwXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUv
c2hhcmQtaHN3Ni9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2hhbmdjaGVjay5odG1sCgogICogaWd0
QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctY3Vyc29yLXZzLWZsaXAtYXRvbWljOgogICAgLSBz
aGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVs2MV0gLT4gW0ZBSUxdWzYyXSAoW2ZkbyMxMDU3Njdd
KQogICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MTYyL3NoYXJkLWhzdzIvaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmctY3Vyc29yLXZz
LWZsaXAtYXRvbWljLmh0bWwKICAgWzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQtaHN3Ni9pZ3RAa21zX2N1cnNvcl9sZWdh
Y3lAMngtbG9uZy1jdXJzb3ItdnMtZmxpcC1hdG9taWMuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29y
X2xlZ2FjeUAyeC1sb25nLWZsaXAtdnMtY3Vyc29yLWxlZ2FjeToKICAgIC0gc2hhcmQtZ2xrOiAg
ICAgICAgICBbUEFTU11bNjNdIC0+IFtGQUlMXVs2NF0gKFtmZG8jMTA0ODczXSkKICAgWzYzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFy
ZC1nbGs0L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUAyeC1sb25nLWZsaXAtdnMtY3Vyc29yLWxlZ2Fj
eS5odG1sCiAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0OTQ1L3NoYXJkLWdsazUvaWd0QGttc19jdXJzb3JfbGVnYWN5QDJ4LWxvbmct
ZmxpcC12cy1jdXJzb3ItbGVnYWN5Lmh0bWwKCiAgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNw
ZW5kLWludGVycnVwdGlibGU6CiAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1NdWzY1XSAt
PiBbSU5DT01QTEVURV1bNjZdIChbZmRvIzEwMzU0MF0pCiAgIFs2NV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQtaHN3NC9pZ3RAa21z
X2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGUuaHRtbAogICBbNjZdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1o
c3c0L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZS5odG1sCgogICog
aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4tcHJpLWluZGZiLWRy
YXctcHdyaXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs2N10gLT4gW0ZBSUxd
WzY4XSAoW2ZkbyMxMDMxNjddKSArNCBzaW1pbGFyIGlzc3VlcwogICBbNjddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTYyL3NoYXJkLWljbGI0L2ln
dEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3
LXB3cml0ZS5odG1sCiAgIFs2OF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE0OTQ1L3NoYXJkLWljbGI2L2lndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAZmJjLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXB3cml0ZS5odG1sCgogICogaWd0
QGttc19wc3JAcHNyMl9wcmltYXJ5X21tYXBfY3B1OgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAg
IFtQQVNTXVs2OV0gLT4gW1NLSVBdWzcwXSAoW2ZkbyMxMDk0NDFdKSArMiBzaW1pbGFyIGlzc3Vl
cwogICBbNjldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV83MTYyL3NoYXJkLWljbGIyL2lndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9tbWFwX2NwdS5odG1s
CiAgIFs3MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0OTQ1L3NoYXJkLWljbGIxL2lndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9tbWFwX2NwdS5o
dG1sCgogIAojIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMKCiAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRp
b25AcmNzMC1zMzoKICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNzFdIChb
ZmRvIzEwODU2Nl0pIC0+IFtQQVNTXVs3Ml0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzcxXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1h
cGw0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkByY3MwLXMzLmh0bWwKICAgWzcyXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQtYXBs
Ny9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sCgogICogaWd0QGdlbV9jdHhfaXNv
bGF0aW9uQHZjczEtZGlydHktY3JlYXRlOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQ
XVs3M10gKFtmZG8jMTA5Mjc2XSAvIFtmZG8jMTEyMDgwXSkgLT4gW1BBU1NdWzc0XQogICBbNzNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTYyL3No
YXJkLWljbGI1L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLWRpcnR5LWNyZWF0ZS5odG1sCiAg
IFs3NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0OTQ1L3NoYXJkLWljbGIxL2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLWRpcnR5LWNyZWF0
ZS5odG1sCgogICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtczM6CiAgICAtIHtzaGFyZC10
Z2xifTogICAgICAgW0lOQ09NUExFVEVdWzc1XSAoW2ZkbyMxMTE4MzJdKSAtPiBbUEFTU11bNzZd
CiAgIFs3NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcxNjIvc2hhcmQtdGdsYjcvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHZjczEtczMuaHRtbAogICBb
NzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NDk0NS9zaGFyZC10Z2xiNi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1zMy5odG1sCgogICog
aWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xlLXRpbWVsaW5lLWJzZDoKICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbU0tJUF1bNzddIChbZmRvIzExMDg0MV0pIC0+IFtQQVNTXVs3OF0KICAg
Wzc3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2
Mi9zaGFyZC1pY2xiNC9pZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNk
Lmh0bWwKICAgWzc4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ5NDUvc2hhcmQtaWNsYjYvaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xl
LXRpbWVsaW5lLWJzZC5odG1sCgogICogaWd0QGdlbV9jdHhfc2hhcmVkQHEtc21va2V0ZXN0LWRl
ZmF1bHQ6CiAgICAtIHtzaGFyZC10Z2xifTogICAgICAgW0lOQ09NUExFVEVdWzc5XSAoW2ZkbyMg
MTExODUyIF0pIC0+IFtQQVNTXVs4MF0KICAgWzc5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC10Z2xiNC9pZ3RAZ2VtX2N0eF9zaGFy
ZWRAcS1zbW9rZXRlc3QtZGVmYXVsdC5odG1sCiAgIFs4MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTQ1L3NoYXJkLXRnbGI4L2lndEBnZW1f
Y3R4X3NoYXJlZEBxLXNtb2tldGVzdC1kZWZhdWx0Lmh0bWwKCiAgKiBpZ3RAZ2VtX2N0eF9zd2l0
Y2hAdmNzMS1oZWF2eS1xdWV1ZToKICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bODFd
IChbZmRvIzExMjA4MF0pIC0+IFtQQVNTXVs4Ml0gKzYgc2ltaWxhciBpc3N1ZXMKICAgWzgxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFy
ZC1pY2xiMy9pZ3RAZ2VtX2N0eF9zd2l0Y2hAdmNzMS1oZWF2eS1xdWV1ZS5odG1sCiAgIFs4Ml06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTQ1
L3NoYXJkLWljbGIxL2lndEBnZW1fY3R4X3N3aXRjaEB2Y3MxLWhlYXZ5LXF1ZXVlLmh0bWwKCiAg
KiBpZ3RAZ2VtX2V4ZWNfYmx0QGNvbGQtbWF4OgogICAgLSB7c2hhcmQtdGdsYn06ICAgICAgIFtJ
TkNPTVBMRVRFXVs4M10gKFtmZG8jMTExNzQ3XSkgLT4gW1BBU1NdWzg0XQogICBbODNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTYyL3NoYXJkLXRn
bGI1L2lndEBnZW1fZXhlY19ibHRAY29sZC1tYXguaHRtbAogICBbODRdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC10Z2xiMi9p
Z3RAZ2VtX2V4ZWNfYmx0QGNvbGQtbWF4Lmh0bWwKCiAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVA
cHJlZW1wdC1jb250ZXh0cy1ic2QyOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs4
NV0gKFtmZG8jMTA5Mjc2XSkgLT4gW1BBU1NdWzg2XSArMTQgc2ltaWxhciBpc3N1ZXMKICAgWzg1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9z
aGFyZC1pY2xiNy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1jb250ZXh0cy1ic2QyLmh0
bWwKICAgWzg2XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ5NDUvc2hhcmQtaWNsYjQvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtY29u
dGV4dHMtYnNkMi5odG1sCgogICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtb3RoZXIt
Y2hhaW4tYnNkOgogICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs4N10gKFtmZG8jMTEx
MzI1XSkgLT4gW1BBU1NdWzg4XSArNSBzaW1pbGFyIGlzc3VlcwogICBbODddOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTYyL3NoYXJkLWljbGIxL2ln
dEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNoYWluLWJzZC5odG1sCiAgIFs4OF06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTQ1
L3NoYXJkLWljbGI1L2lndEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNoYWluLWJz
ZC5odG1sCgogICogaWd0QGdlbV9saW5lYXJfYmxpdHNAaW50ZXJydXB0aWJsZToKICAgIC0gc2hh
cmQtYXBsOiAgICAgICAgICBbSU5DT01QTEVURV1bODldIChbZmRvIzEwMzkyN10gLyBbZmRvIzEx
MjA2N10pIC0+IFtQQVNTXVs5MF0KICAgWzg5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1hcGwzL2lndEBnZW1fbGluZWFyX2JsaXRz
QGludGVycnVwdGlibGUuaHRtbAogICBbOTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1hcGw0L2lndEBnZW1fbGluZWFyX2Js
aXRzQGludGVycnVwdGlibGUuaHRtbAoKICAqIGlndEBnZW1fbW1hcF9ndHRAaGFuZzoKICAgIC0g
c2hhcmQtaHN3OiAgICAgICAgICBbU0tJUF1bOTFdIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs5
Ml0KICAgWzkxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNzE2Mi9zaGFyZC1oc3c1L2lndEBnZW1fbW1hcF9ndHRAaGFuZy5odG1sCiAgIFs5Ml06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTQ1L3No
YXJkLWhzdzIvaWd0QGdlbV9tbWFwX2d0dEBoYW5nLmh0bWwKICAgIC0gc2hhcmQtc25iOiAgICAg
ICAgICBbU0tJUF1bOTNdIChbZmRvIzEwOTI3MV0pIC0+IFtQQVNTXVs5NF0KICAgWzkzXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1z
bmI2L2lndEBnZW1fbW1hcF9ndHRAaGFuZy5odG1sCiAgIFs5NF06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0OTQ1L3NoYXJkLXNuYjYvaWd0QGdl
bV9tbWFwX2d0dEBoYW5nLmh0bWwKCiAgKiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAbWFwLWZpeGVk
LWludmFsaWRhdGUtYnVzeToKICAgIC0gc2hhcmQtc25iOiAgICAgICAgICBbRE1FU0ctV0FSTl1b
OTVdIChbZmRvIzExMTg3MF0pIC0+IFtQQVNTXVs5Nl0gKzEgc2ltaWxhciBpc3N1ZQogICBbOTVd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83MTYyL3No
YXJkLXNuYjYvaWd0QGdlbV91c2VycHRyX2JsaXRzQG1hcC1maXhlZC1pbnZhbGlkYXRlLWJ1c3ku
aHRtbAogICBbOTZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDk0NS9zaGFyZC1zbmI0L2lndEBnZW1fdXNlcnB0cl9ibGl0c0BtYXAtZml4ZWQt
aW52YWxpZGF0ZS1idXN5Lmh0bWwKCiAgKiBpZ3RAaTkxNV9wbV9yYzZfcmVzaWRlbmN5QHJjNi1h
Y2N1cmFjeToKICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbU0tJUF1bOTddIChbZmRvIzEwOTI3
MV0pIC0+IFtQQVNTXVs5OF0KICAgWzk3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNzE2Mi9zaGFyZC1rYmw3L2lndEBpOTE1X3BtX3JjNl9yZXNpZGVu
Y3lAcmM2LWFjY3VyYWN5Lmh0bWwKICAgWzk4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDUvc2hhcmQta2JsMS9pZ3RAaTkxNV9wbV9yYzZf
cmVzaWRlbmN5QHJjNi1hY2N1cmFjeS5odG1sCgogICogaWd0QGk5MTVfc3VzcGVuZEBzeXNmcy1y
ZWFkZXI6CiAgICAtIHtzaGFyZC10Z2xifTogICAgICAgW0lOQ09NUExFVEVdWzk5XSAoW2ZkbyMx
MTE4MzJdIC8gW2ZkbyMxMTE4NTBdKSAtPiBbUEFTU11bMTAwXSArMiBzaW1pbGFyIGlzc3Vlcwog
ICBbOTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
MTYyL3NoYXJkLXRnbGI1L2lndEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVhZGVyLmh0bWwKICAgWzEw
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
OTQ1L3NoYXJkLXRnbGIyL2lndEBpOTE1X3N1c3BlbmRAc3lzZnMtcmVhZGVyLmh0bWwKCiAgKiBp
Z3RAa21zX2J1c3lAZXh0ZW5kZWQtbW9kZXNldC1oYW5nLW9sZGZiLXdpdGgtcmVzZXQtcmVuZGVy
LWI6CiAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1NLSVBdWzEwMV0gKFtmZG8jMTA5MjcxXSkg
LT4gW1BBU1NdWzEwMl0gKzIgc2ltaWxhciBpc3N1ZXMKICAgWzEwMV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQtc2tsMy9pZ3RAa21z
X2J1c3lAZXh0ZW5kZWQtbW9kZXNldC1oYW5nLW9sZGZiLXdpdGgtcmVzZXQtcmVuZGVyLWIuaHRt
bAogICBbMTAyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ5NDUvc2hhcmQtc2tsMS9pZ3RAa21zX2J1c3lAZXh0ZW5kZWQtbW9kZXNldC1oYW5n
LW9sZGZiLXdpdGgtcmVzZXQtcmVuZGVyLWIuaHRtbAoKICAqIGlndEBrbXNfY3Vyc29yX2NyY0Bw
aXBlLWEtY3Vyc29yLXN1c3BlbmQ6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNHLVdB
Uk5dWzEwM10gKFtmZG8jMTA4NTY2XSkgLT4gW1BBU1NdWzEwNF0gKzUgc2ltaWxhciBpc3N1ZXMK
ICAgWzEwM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzcxNjIvc2hhcmQta2JsMy9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci1zdXNwZW5k
Lmh0bWwKICAgWzEwNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE0OTQ1L3NoYXJkLWtibDMvaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJz
b3Itc3VzcGVuZC5odG1sCgogICogaWd0QGttc19jdXJzb3JfbGVnYWN5QGFsbC1waXBlcy10b3J0
dXJlLW1vdmU6CiAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNHLVdBUk5dWzEwNV0gKFtm
ZG8jMTA3MTIyXSkgLT4gW1BBU1NdWzEwNl0KICAgWzEwNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjIvc2hhcmQta2JsMi9pZ3RAa21zX2N1cnNv
cl9sZWdhY3lAYWxsLXBpcGVzLXRvcnR1cmUtbW92ZS5odG1sCiAgIFsxMDZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1rYmw2
L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBhbGwtcGlwZXMtdG9ydHVyZS1tb3ZlLmh0bWwKCiAgKiBp
Z3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXJnYjU2NS1ibHQteHRpbGVkOgogICAgLSBzaGFy
ZC1zbmI6ICAgICAgICAgIFtJTkNPTVBMRVRFXVsxMDddIChbZmRvIzEwNTQxMV0pIC0+IFtQQVNT
XVsxMDhdCiAgIFsxMDddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV83MTYyL3NoYXJkLXNuYjEvaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC1yZ2I1
NjUtYmx0LXh0aWxlZC5odG1sCiAgIFsxMDhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9zaGFyZC1zbmI1L2lndEBrbXNfZHJhd19jcmNA
ZHJhdy1tZXRob2QtcmdiNTY1LWJsdC14dGlsZWQuaHRtbAoKICAqIGlndEBrbXNfZHJhd19jcmNA
ZHJhdy1tZXRob2QteHJnYjg4ODgtbW1hcC13Yy11bnRpbGVkOgogICAgLSBzaGFyZC1za2w6ICAg
ICAgICAgIFtGQUlMXVsxMDldIChbZmRvIzEwMzE4NF0gLyBbZmRvIzEwMzIzMl0gLyBbZmRvIzEw
ODE0NV0gLyBbZmRvIzEwODQKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDk0NS9pbmRl
eC5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
