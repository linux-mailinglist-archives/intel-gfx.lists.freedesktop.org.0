Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 765CA7177AF
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 09:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D346D10E48A;
	Wed, 31 May 2023 07:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BBDF10E48A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 07:19:17 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 5A5C3210EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 07:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1685517553; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IO+yP1iM57z6L2zXjnitXs+/6/maZbX2Qdyct8i6wo8=;
 b=xcs7fv87aIN9RKVvSuLlR0UJPS4Wsw3knadS1eQiLwSQUsUAm3Pn6DkUu3oCUZ2GvHnb8F
 0DlNDoWTMM//3cQs9OwlVZmKdkKQvS9WkE8OXfQHSZp+8beTX0FgDyfmznBoFU0RFNGofY
 4slhYp+3uSvEcK6vguxaRIBMMZOgiGQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1685517553;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IO+yP1iM57z6L2zXjnitXs+/6/maZbX2Qdyct8i6wo8=;
 b=DbxTuBcIAO29lSMHDlSPZWzkJ9CooqZxIBapW8sI9ZurADTzEoFAZwgmUzK3WkTkK8yDrp
 xpf9JXL0zJufiDAA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 4BBB6138E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 07:19:13 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id qcSwEfH0dmR1NwAAMHmgww
 (envelope-from <tzimmermann@suse.de>)
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 07:19:13 +0000
Message-ID: <45b59c78-ccb2-b311-6e52-0c3369b4f900@suse.de>
Date: Wed, 31 May 2023 09:19:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230530150253.22758-1-tzimmermann@suse.de>
 <168551717591.17617.13547499244751534904@emeril.freedesktop.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <168551717591.17617.13547499244751534904@emeril.freedesktop.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0Mi9VQsfzJxPtz28Igy0vTYM"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C01/13=5D_fbdev=3A_Add_Kconfig_?=
 =?utf-8?q?options_to_select_different_fb=5Fops_helpers?=
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0Mi9VQsfzJxPtz28Igy0vTYM
Content-Type: multipart/mixed; boundary="------------x1marD4joGS6CBH1jlSMp0Qh";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <45b59c78-ccb2-b311-6e52-0c3369b4f900@suse.de>
Subject: =?UTF-8?Q?Re=3a_=e2=9c=97_Fi=2eCI=2eCHECKPATCH=3a_warning_for_serie?=
 =?UTF-8?Q?s_starting_with_=5bv5=2c01/13=5d_fbdev=3a_Add_Kconfig_options_to_?=
 =?UTF-8?Q?select_different_fb=5fops_helpers?=
References: <20230530150253.22758-1-tzimmermann@suse.de>
 <168551717591.17617.13547499244751534904@emeril.freedesktop.org>
In-Reply-To: <168551717591.17617.13547499244751534904@emeril.freedesktop.org>

--------------x1marD4joGS6CBH1jlSMp0Qh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

VGhlc2Ugd2FybmluZ3MgYXJlIGV4cGVjdGVkLCBidXQgaW52YWxpZC4NCg0KQW0gMzEuMDUu
MjMgdW0gMDk6MTIgc2NocmllYiBQYXRjaHdvcms6DQo+ID09IFNlcmllcyBEZXRhaWxzID09
DQo+IA0KPiBTZXJpZXM6IHNlcmllcyBzdGFydGluZyB3aXRoIFt2NSwwMS8xM10gZmJkZXY6
IEFkZCBLY29uZmlnIG9wdGlvbnMgdG8gc2VsZWN0IGRpZmZlcmVudCBmYl9vcHMgaGVscGVy
cw0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
MTE4NTc0Lw0KPiBTdGF0ZSA6IHdhcm5pbmcNCj4gDQo+ID09IFN1bW1hcnkgPT0NCj4gDQo+
IEVycm9yOiBkaW0gY2hlY2twYXRjaCBmYWlsZWQNCj4gZDk5YzAyNWI4ZmFkIGZiZGV2OiBB
ZGQgS2NvbmZpZyBvcHRpb25zIHRvIHNlbGVjdCBkaWZmZXJlbnQgZmJfb3BzIGhlbHBlcnMN
Cj4gMzA1Yjc3MmNhNmM0IGZiZGV2OiBBZGQgaW5pdGlhbGl6ZXIgbWFjcm9zIGZvciBzdHJ1
Y3QgZmJfb3BzDQo+IC06NTA6IEVSUk9SOkNPTVBMRVhfTUFDUk86IE1hY3JvcyB3aXRoIGNv
bXBsZXggdmFsdWVzIHNob3VsZCBiZSBlbmNsb3NlZCBpbiBwYXJlbnRoZXNlcw0KPiAjNTA6
IEZJTEU6IGluY2x1ZGUvbGludXgvZmIuaDo1NTc6DQo+ICsjZGVmaW5lIEZCX0RFRkFVTFRf
SU9fT1BTIFwNCj4gKwlfX0ZCX0RFRkFVTFRfSU9fT1BTX1JEV1IsIFwNCj4gKwlfX0ZCX0RF
RkFVTFRfSU9fT1BTX0RSQVcsIFwNCj4gKwlfX0ZCX0RFRkFVTFRfSU9fT1BTX01NQVANCj4g
DQo+IC06ODI6IEVSUk9SOkNPTVBMRVhfTUFDUk86IE1hY3JvcyB3aXRoIGNvbXBsZXggdmFs
dWVzIHNob3VsZCBiZSBlbmNsb3NlZCBpbiBwYXJlbnRoZXNlcw0KPiAjODI6IEZJTEU6IGlu
Y2x1ZGUvbGludXgvZmIuaDo1OTA6DQo+ICsjZGVmaW5lIEZCX0RFRkFVTFRfU1lTX09QUyBc
DQo+ICsJX19GQl9ERUZBVUxUX1NZU19PUFNfUkRXUiwgXA0KPiArCV9fRkJfREVGQVVMVF9T
WVNfT1BTX0RSQVcsIFwNCj4gKwlfX0ZCX0RFRkFVTFRfU1lTX09QU19NTUFQDQo+IA0KPiAt
OjExNDogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnX19k
YW1hZ2VfYXJlYScgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/DQo+ICMxMTQ6IEZJTEU6IGlu
Y2x1ZGUvbGludXgvZmIuaDo2NzA6DQo+ICsjZGVmaW5lIF9fRkJfR0VOX0RFRkFVTFRfREVG
RVJSRURfT1BTX0RSQVcoX19wcmVmaXgsIF9fZGFtYWdlX2FyZWEsIF9fbW9kZSkgXA0KPiAr
CXN0YXRpYyB2b2lkIF9fcHJlZml4ICMjIF9kZWZpb19maWxscmVjdChzdHJ1Y3QgZmJfaW5m
byAqaW5mbywgXA0KPiArCQkJCQkJY29uc3Qgc3RydWN0IGZiX2ZpbGxyZWN0ICpyZWN0KSBc
DQo+ICsJeyBcDQo+ICsJCV9fbW9kZSAjIyBfZmlsbHJlY3QoaW5mbywgcmVjdCk7IFwNCj4g
KwkJX19kYW1hZ2VfYXJlYShpbmZvLCByZWN0LT5keCwgcmVjdC0+ZHksIHJlY3QtPndpZHRo
LCByZWN0LT5oZWlnaHQpOyBcDQo+ICsJfSBcDQo+ICsJc3RhdGljIHZvaWQgX19wcmVmaXgg
IyMgX2RlZmlvX2NvcHlhcmVhKHN0cnVjdCBmYl9pbmZvICppbmZvLCBcDQo+ICsJCQkJCQlj
b25zdCBzdHJ1Y3QgZmJfY29weWFyZWEgKmFyZWEpIFwNCj4gKwl7IFwNCj4gKwkJX19tb2Rl
ICMjIF9jb3B5YXJlYShpbmZvLCBhcmVhKTsgXA0KPiArCQlfX2RhbWFnZV9hcmVhKGluZm8s
IGFyZWEtPmR4LCBhcmVhLT5keSwgYXJlYS0+d2lkdGgsIGFyZWEtPmhlaWdodCk7IFwNCj4g
Kwl9IFwNCj4gKwlzdGF0aWMgdm9pZCBfX3ByZWZpeCAjIyBfZGVmaW9faW1hZ2VibGl0KHN0
cnVjdCBmYl9pbmZvICppbmZvLCBcDQo+ICsJCQkJCQkgY29uc3Qgc3RydWN0IGZiX2ltYWdl
ICppbWFnZSkgXA0KPiArCXsgXA0KPiArCQlfX21vZGUgIyMgX2ltYWdlYmxpdChpbmZvLCBp
bWFnZSk7IFwNCj4gKwkJX19kYW1hZ2VfYXJlYShpbmZvLCBpbWFnZS0+ZHgsIGltYWdlLT5k
eSwgaW1hZ2UtPndpZHRoLCBpbWFnZS0+aGVpZ2h0KTsgXA0KPiArCX0NCj4gDQo+IC06MTM0
OiBFUlJPUjpDT01QTEVYX01BQ1JPOiBNYWNyb3Mgd2l0aCBjb21wbGV4IHZhbHVlcyBzaG91
bGQgYmUgZW5jbG9zZWQgaW4gcGFyZW50aGVzZXMNCj4gIzEzNDogRklMRTogaW5jbHVkZS9s
aW51eC9mYi5oOjY5MDoNCj4gKyNkZWZpbmUgRkJfR0VOX0RFRkFVTFRfREVGRVJSRURfSU9f
T1BTKF9fcHJlZml4LCBfX2RhbWFnZV9yYW5nZSwgX19kYW1hZ2VfYXJlYSkgXA0KPiArCV9f
RkJfR0VOX0RFRkFVTFRfREVGRVJSRURfT1BTX1JEV1IoX19wcmVmaXgsIF9fZGFtYWdlX3Jh
bmdlLCBpbykgXA0KPiArCV9fRkJfR0VOX0RFRkFVTFRfREVGRVJSRURfT1BTX0RSQVcoX19w
cmVmaXgsIF9fZGFtYWdlX2FyZWEsIGNmYikNCj4gDQo+IC06MTM0OiBDSEVDSzpNQUNST19B
UkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdfX3ByZWZpeCcgLSBwb3NzaWJsZSBz
aWRlLWVmZmVjdHM/DQo+ICMxMzQ6IEZJTEU6IGluY2x1ZGUvbGludXgvZmIuaDo2OTA6DQo+
ICsjZGVmaW5lIEZCX0dFTl9ERUZBVUxUX0RFRkVSUkVEX0lPX09QUyhfX3ByZWZpeCwgX19k
YW1hZ2VfcmFuZ2UsIF9fZGFtYWdlX2FyZWEpIFwNCj4gKwlfX0ZCX0dFTl9ERUZBVUxUX0RF
RkVSUkVEX09QU19SRFdSKF9fcHJlZml4LCBfX2RhbWFnZV9yYW5nZSwgaW8pIFwNCj4gKwlf
X0ZCX0dFTl9ERUZBVUxUX0RFRkVSUkVEX09QU19EUkFXKF9fcHJlZml4LCBfX2RhbWFnZV9h
cmVhLCBjZmIpDQo+IA0KPiAtOjEzODogRVJST1I6Q09NUExFWF9NQUNSTzogTWFjcm9zIHdp
dGggY29tcGxleCB2YWx1ZXMgc2hvdWxkIGJlIGVuY2xvc2VkIGluIHBhcmVudGhlc2VzDQo+
ICMxMzg6IEZJTEU6IGluY2x1ZGUvbGludXgvZmIuaDo2OTQ6DQo+ICsjZGVmaW5lIEZCX0dF
Tl9ERUZBVUxUX0RFRkVSUkVEX1NZU19PUFMoX19wcmVmaXgsIF9fZGFtYWdlX3JhbmdlLCBf
X2RhbWFnZV9hcmVhKSBcDQo+ICsJX19GQl9HRU5fREVGQVVMVF9ERUZFUlJFRF9PUFNfUkRX
UihfX3ByZWZpeCwgX19kYW1hZ2VfcmFuZ2UsIHN5cykgXA0KPiArCV9fRkJfR0VOX0RFRkFV
TFRfREVGRVJSRURfT1BTX0RSQVcoX19wcmVmaXgsIF9fZGFtYWdlX2FyZWEsIHN5cykNCj4g
DQo+IC06MTM4OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNl
ICdfX3ByZWZpeCcgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/DQo+ICMxMzg6IEZJTEU6IGlu
Y2x1ZGUvbGludXgvZmIuaDo2OTQ6DQo+ICsjZGVmaW5lIEZCX0dFTl9ERUZBVUxUX0RFRkVS
UkVEX1NZU19PUFMoX19wcmVmaXgsIF9fZGFtYWdlX3JhbmdlLCBfX2RhbWFnZV9hcmVhKSBc
DQo+ICsJX19GQl9HRU5fREVGQVVMVF9ERUZFUlJFRF9PUFNfUkRXUihfX3ByZWZpeCwgX19k
YW1hZ2VfcmFuZ2UsIHN5cykgXA0KPiArCV9fRkJfR0VOX0RFRkFVTFRfREVGRVJSRURfT1BT
X0RSQVcoX19wcmVmaXgsIF9fZGFtYWdlX2FyZWEsIHN5cykNCj4gDQo+IC06MTU4OiBFUlJP
UjpDT01QTEVYX01BQ1JPOiBNYWNyb3Mgd2l0aCBjb21wbGV4IHZhbHVlcyBzaG91bGQgYmUg
ZW5jbG9zZWQgaW4gcGFyZW50aGVzZXMNCj4gIzE1ODogRklMRTogaW5jbHVkZS9saW51eC9m
Yi5oOjcxNDoNCj4gKyNkZWZpbmUgRkJfREVGQVVMVF9ERUZFUlJFRF9PUFMoX19wcmVmaXgp
IFwNCj4gKwlfX0ZCX0RFRkFVTFRfREVGRVJSRURfT1BTX1JEV1IoX19wcmVmaXgpLCBcDQo+
ICsJX19GQl9ERUZBVUxUX0RFRkVSUkVEX09QU19EUkFXKF9fcHJlZml4KSwgXA0KPiArCV9f
RkJfREVGQVVMVF9ERUZFUlJFRF9PUFNfTU1BUChfX3ByZWZpeCkNCj4gDQo+IC06MTU4OiBD
SEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdfX3ByZWZpeCcg
LSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/DQo+ICMxNTg6IEZJTEU6IGluY2x1ZGUvbGludXgv
ZmIuaDo3MTQ6DQo+ICsjZGVmaW5lIEZCX0RFRkFVTFRfREVGRVJSRURfT1BTKF9fcHJlZml4
KSBcDQo+ICsJX19GQl9ERUZBVUxUX0RFRkVSUkVEX09QU19SRFdSKF9fcHJlZml4KSwgXA0K
PiArCV9fRkJfREVGQVVMVF9ERUZFUlJFRF9PUFNfRFJBVyhfX3ByZWZpeCksIFwNCj4gKwlf
X0ZCX0RFRkFVTFRfREVGRVJSRURfT1BTX01NQVAoX19wcmVmaXgpDQo+IA0KPiB0b3RhbDog
NSBlcnJvcnMsIDAgd2FybmluZ3MsIDQgY2hlY2tzLCAxMzMgbGluZXMgY2hlY2tlZA0KPiA4
Y2Y4MTE1M2Q5YmUgZHJtL2FybWFkYTogVXNlIHJlZ3VsYXIgZmJkZXYgSS9PIGhlbHBlcnMN
Cj4gYWU4NzUzYmZkMzcyIGRybS9leHlub3M6IFVzZSByZWd1bGFyIGZiZGV2IEkvTyBoZWxw
ZXJzDQo+IDg1NTk0ZDg2Nzk0MyBkcm0vZ21hNTAwOiBVc2UgcmVndWxhciBmYmRldiBJL08g
aGVscGVycw0KPiA1ODBmNDM5ODAwM2UgZHJtL3JhZGVvbjogVXNlIHJlZ3VsYXIgZmJkZXYg
SS9PIGhlbHBlcnMNCj4gYjkzNzg1Y2RiNzRiIGRybS9mYmRldi1kbWE6IFVzZSByZWd1bGFy
IGZiZGV2IEkvTyBoZWxwZXJzDQo+IGYyZDg0ZDY2ZTVkMiBkcm0vb21hcGRybTogVXNlIHJl
Z3VsYXIgZmJkZXYgSS9PIGhlbHBlcnMNCj4gZGM5NTk4ZDBhYTRhIGRybS90ZWdyYTogVXNl
IHJlZ3VsYXIgZmJkZXYgSS9PIGhlbHBlcnMNCj4gNjQxNTE3YTE2YTZkIGRybS9mYi1oZWxw
ZXI6IEV4cG9ydCBoZWxwZXJzIGZvciBtYXJraW5nIGRhbWFnZSBhcmVhcw0KPiBhZWE1NTg5
NDdiN2EgZHJtL21zbTogVXNlIHJlZ3VsYXIgZmJkZXYgSS9PIGhlbHBlcnMNCj4gODYzMmRj
OTA1OTNhIGRybS9mYmRldi1nZW5lcmljOiBJbXBsZW1lbnQgZGVkaWNhdGVkIGZiZGV2IEkv
TyBoZWxwZXJzDQo+IGY3YTBhOWQ2OTdmMiBkcm0vaTkxNTogSW1wbGVtZW50IGRlZGljYXRl
ZCBmYmRldiBJL08gaGVscGVycw0KPiANCj4gDQoNCi0tIA0KVGhvbWFzIFppbW1lcm1hbm4N
CkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1h
bnkNCkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3Vk
aWVuIE1vZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0K

--------------x1marD4joGS6CBH1jlSMp0Qh--

--------------0Mi9VQsfzJxPtz28Igy0vTYM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmR29PAFAwAAAAAACgkQlh/E3EQov+Dl
TRAArbYSF0LF8X7fZNoXr/HivZIkJ202Yc7Wxg1Too3FTYFIg12O7lHby+/yb51PUfjFHZVXPYLi
dGV4EKYc/DeLV+XxkQhSEsj5QopPouuoQc4z33Fc7/QM0RkDSV/HGArU4IdmLQMxligClR1RxErQ
im/q4wCwmp/0raXc5Mi3/wD27gJzw6Sv+cAYVgSOqGJ0FUIA8MkjezIg1bXyHNe0B0lmaDfprbyn
EiBsDldrO2CgV4jAqduDby5JxOXy10iq3+NGDXWPt4u3sIDm7Wba1DcR8ZwShSxFu7TVGdRkV0IB
i6GOByR8j++KDTHSjkbltyNZgBTWEboVQN+N25+ArpOlfSU40FWTSCbqPuOmLI57EW5yTSn+C1rk
WWc1QmfygZ5jrti65Wd37MnRd0zVDvGIWR3HAQI0bjZhxJ4JsEdg1rGWWn1WhHlIHc1c6z9TlcBN
GQwqzMTVs3ParHYTwoUxGexQDvtM84eaAl+bqFr1wXC/PZXI216o/+K3AkIcq4hx5UVZNCFYikVB
5z1eMplUTncq70Rdjs4DNDLS3ALIIZamJqGIbFtuGW9xR/5cfGS+a036sikxbTM28Z16NugMYuR2
hm45q8UjA2ZxaELE0eUpPaX+47nC3Dx8EcXG876XG54gB1bo8mko3/7li38WJobJBCFi2hBebMqQ
+9w=
=kdUp
-----END PGP SIGNATURE-----

--------------0Mi9VQsfzJxPtz28Igy0vTYM--
