Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D54E188D81
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 19:57:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4CC89BD2;
	Tue, 17 Mar 2020 18:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3486E817
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 18:57:09 +0000 (UTC)
Date: Tue, 17 Mar 2020 18:56:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xmx.ch;
 s=protonmail; t=1584471427;
 bh=VbxehVJ4tZHTGs8uriC0GhRe8e3NqkBNoC1hqLpp7SA=;
 h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
 b=qNbNdHP3LVcRdx7iReRVMF8FqB02xfaG+iWXBw84/8eZwZpgYCcbqk/VFGUchy0S0
 HmJ7Zf78peE2IgoLocARJT2aOiqDpAB4SZKNERQcRG+aBEfti+DNV8ddQ3UY4Bd3G2
 duD+6Opr+jxbK4Ldj9/gc1dBwmObRoQiY7RJgoHQ=
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Damian Hischier <dh@xmx.ch>
Message-ID: <jdqEyaiHhDwm6lTXjzrj7NoxQwpsPsv79qmpRk9TPXsLQ4atLkaKDAbTVJ6GuKzG03mYIMimWqQGCNNHCpTwfeRXt5XzfiZHXRwY1m5Hlko=@xmx.ch>
Feedback-ID: NXUO8uiol7M0sU5UT6sH9C6nz5eQ8a66mgWk9578qhkBMQz_iVu37QRqy-VhzuKMfD9rX9lT-LKN5iO58VC9Bw==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,HTML_MESSAGE shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
Subject: [Intel-gfx] Screen Flickering on DELL XPS-13-7390
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
Reply-To: Damian Hischier <dh@xmx.ch>
Content-Type: multipart/mixed; boundary="===============1059919499=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--===============1059919499==
Content-Type: multipart/alternative;
	boundary="b1_02916f38c3f9aadba268b90362137ffa"

This is a multi-part message in MIME format.

--b1_02916f38c3f9aadba268b90362137ffa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGVsbG8KCkkgaW5zdGFsbGVkIG9wZW5zdXNlIFR1bWJsZXdlZWQgbGludXggb24gYSBicmFuZCBu
ZXcgRGVsbCBYUFMtMTMtNzM5MC4gQWxyZWFkeSBkdXJpbmcgdGhlIGluc3RhbGxhdGlvbiwgdGhl
IHNjcmVlbiBzdGFydGVkIHRvIGZsaWNrZXIuIFRoZW4gSSBpbnN0YWxsZWQgb3BlbnN1c2UgMTUu
MSBvbiB0aGUgc2FtZSBsYXB0b3AgYW5kIGl0IHdvcmtlZCB3aXRob3V0IHNjcmVlbiBmbGlja2Vy
aW5nLiBCdXQgYWZ0ZXIgSSBydW4gdGhlIG9ubGluZSB1cGRhdGUgaXQgc3RhcnRlZCB0byBmbGlj
a2VyIGFnYWluLiBJIHN1c3BlY3QgdGhhdCB0aGVyZSBhcmUgc29tZSBjaGFuZ2VzIGluIHRoZSBu
ZXdlciBrZXJuZWwgdmVyc2lvbnMuIERvZXMgYW55Ym9keSBrbm93IHdoeSBpdCBkb2VzIHdvcmsg
d2l0aCBrZXJuZWwgNC4xMi4xNC1scDE1MS4yNy1kZWZhdWx0IGFuZCBpdCBkb2Vzbid0IHdvcmsg
d2l0aCBhIG5ld2VyIGtlcm5lbC4gSSBvcGVuZWQgYSB0aHJlYWQgaW4gdGhlIG9wZW5zdXNlIGZv
cnVtOgoKaHR0cHM6Ly9mb3J1bXMub3BlbnN1c2Uub3JnL3Nob3d0aHJlYWQucGhwLzUzOTQ5Mi1T
Y3JlZW4tZmxpY2tlcmluZy1vbi1ERUxMLVhQUy0xMy03MzkwP3A9MjkyOTg4NyNwb3N0MjkyOTg4
NwoKVGhlcmUgeW91IGNhbiBzZWUgdGhlIG91dHB1dHMgb2YgaW54aS4gU29tZWJvZHkgcmVjb21t
ZW5kZWQgdG8gYXNrIGhlcmUgZm9yIGFkdmljZS4gSXMgdGhlcmUgYW55dGhpbmcgSSBjYW4gZG8g
dG8gZ2V0IHJpZCBvZiB0aGlzIHNjcmVlbiBmbGlja2VyaW5nPwoKVGhhbmsgeW91IHZlcnkgbXVj
aCBmb3IgeW91ciBoZWxwCgpTZW50IGZyb20gW1Byb3Rvbk1haWxdKGh0dHBzOi8vcHJvdG9ubWFp
bC5jb20pLCBTd2lzcy1iYXNlZCBlbmNyeXB0ZWQgZW1haWwu


--b1_02916f38c3f9aadba268b90362137ffa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdj5IZWxsbzxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkkgaW5zdGFsbGVkIG9wZW5z
dXNlIFR1bWJsZXdlZWQNCmxpbnV4IG9uIGEgYnJhbmQgbmV3IERlbGwgWFBTLTEzLTczOTAuIEFs
cmVhZHkgZHVyaW5nIHRoZSBpbnN0YWxsYXRpb24sDQp0aGUgc2NyZWVuIHN0YXJ0ZWQgdG8gZmxp
Y2tlci4gIFRoZW4gSSBpbnN0YWxsZWQgb3BlbnN1c2UgMTUuMSBvbiB0aGUNCnNhbWUgbGFwdG9w
IGFuZCBpdCB3b3JrZWQgd2l0aG91dCBzY3JlZW4NCmZsaWNrZXJpbmcuIEJ1dCBhZnRlciBJIHJ1
biB0aGUgb25saW5lIHVwZGF0ZSBpdCBzdGFydGVkIHRvIGZsaWNrZXINCmFnYWluLiBJIHN1c3Bl
Y3QgdGhhdCB0aGVyZSBhcmUgc29tZSBjaGFuZ2VzIGluIHRoZSBuZXdlciBrZXJuZWwNCnZlcnNp
b25zLiBEb2VzIGFueWJvZHkga25vdyB3aHkgaXQgZG9lcyB3b3JrIHdpdGgga2VybmVsDQo0LjEy
LjE0LWxwMTUxLjI3LWRlZmF1bHQgYW5kIGl0IGRvZXNuJ3Qgd29yayB3aXRoIGEgbmV3ZXIga2Vy
bmVsLiBJDQpvcGVuZWQgYSB0aHJlYWQgaW4gdGhlIG9wZW5zdXNlIGZvcnVtOjxicj48L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2PjxhIGhyZWY9Imh0dHBzOi8vZm9ydW1zLm9wZW5zdXNlLm9yZy9z
aG93dGhyZWFkLnBocC81Mzk0OTItU2NyZWVuLWZsaWNrZXJpbmctb24tREVMTC1YUFMtMTMtNzM5
MD9wPTI5Mjk4ODcjcG9zdDI5Mjk4ODciIHRhcmdldD0iX2JsYW5rIiByZWw9Im5vcmVmZXJyZXIg
bm9mb2xsb3cgbm9vcGVuZXIiPmh0dHBzOi8vZm9ydW1zLm9wZW5zdXNlLm9yZy9zaG93dGhyZWFk
LnBocC81Mzk0OTItU2NyZWVuLWZsaWNrZXJpbmctb24tREVMTC1YUFMtMTMtNzM5MD9wPTI5Mjk4
ODcjcG9zdDI5Mjk4ODc8L2E+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhlcmUNCiB5
b3UgY2FuIHNlZSB0aGUgb3V0cHV0cyBvZiBpbnhpLiBTb21lYm9keSByZWNvbW1lbmRlZCB0byBh
c2sgaGVyZSBmb3INCmFkdmljZS4gSXMgdGhlcmUgYW55dGhpbmcgSSBjYW4gZG8gdG8gZ2V0IHJp
ZCBvZiB0aGlzIHNjcmVlbiBmbGlja2VyaW5nPzxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2
PlRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgaGVscDxicj48L2Rpdj48ZGl2Pjxicj48L2Rp
dj48ZGl2IGNsYXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jayI+PGRpdiBjbGFzcz0icHJv
dG9ubWFpbF9zaWduYXR1cmVfYmxvY2stdXNlciI+PGRpdj5TZW50IGZyb20gPGEgaHJlZj0iaHR0
cHM6Ly9wcm90b25tYWlsLmNvbSI+UHJvdG9uTWFpbDwvYT4sIFN3aXNzLWJhc2VkIGVuY3J5cHRl
ZCBlbWFpbC48YnI+PC9kaXY+PC9kaXY+PGRpdiBjbGFzcz0icHJvdG9ubWFpbF9zaWduYXR1cmVf
YmxvY2stcHJvdG9uIHByb3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2NrLWVtcHR5Ij48YnI+PC9kaXY+
PC9kaXY+PGRpdj48YnI+PC9kaXY+



--b1_02916f38c3f9aadba268b90362137ffa--


--===============1059919499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1059919499==--

