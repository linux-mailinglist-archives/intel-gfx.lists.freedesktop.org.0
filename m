Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD86C37FB80
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 18:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF946ED34;
	Thu, 13 May 2021 16:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F7E16E094
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 16:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620923424;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UKlAqAzAdOkwZ6eIbNgye1aUEknPcQRsjC+5Imsws/M=;
 b=Y7ox9ftxwJDs7xO21+1g3qgI4CsHsJrRFPBpnpCPzdS6yKyg2D+1+ePW1Vw5sIIul5NVYn
 GOOUhwn2fzE96lmQOTWIwLoM5luHx/9apRZDDvYpoI5Iw8nK1yimFmH+qYHJIVYXCPBTNL
 aRxAovANqSWfo0fbMgH8zVIRHJGNWIg=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-hjOX_B_oPwaBeRqrj5b-cQ-1; Thu, 13 May 2021 12:30:20 -0400
X-MC-Unique: hjOX_B_oPwaBeRqrj5b-cQ-1
Received: by mail-qv1-f69.google.com with SMTP id
 d11-20020a0cdb0b0000b02901c0da4391d5so21793445qvk.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 09:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=UKlAqAzAdOkwZ6eIbNgye1aUEknPcQRsjC+5Imsws/M=;
 b=bQT+IHLMsz5TNFupluD02NJHGxomvQPS2Q9gsaf9Z4OkEKl2a/G8jSuel05laH66m2
 VnkX+hsQoA8RcPeoPMOKSEQDZvQa8DjrYqy7BvFbohxugPfXxvrSjlUaK7i0RQ/MuqKi
 DOXqREhp//VOb2SlNO1+OADWh9apS8jVCS1iPECxvaKzyv57CuUbyd6hyAtctQ5RzYT2
 fCYFQEDIRNtxPSTNZIK5p/PihC4xGIplz6V59URiYKuTjpz2FY6x3fw7TIT6tOPblfVC
 LHjPAVpApZsMKOc9Y1YWXx+YlNeioKx3pN1RCJWiLH+jPg3tD7Ie+v/3mn/Nxy7Kv3Lr
 Y1Ww==
X-Gm-Message-State: AOAM530eiKl5FTp0nLChHkIJzkXMmVcQ473XnmpjVl7m/nik7Foo+dIr
 o1lLoAewTupJXk15mIiCPfAq/yFuaCK/2bYOubQB5bE1YoObd4oWd/vxt+bIjAetrARIAoump8i
 EfQfgTOuhwzj5agyJQ6/ll7RLN63G
X-Received: by 2002:a0c:9ccc:: with SMTP id j12mr41602864qvf.30.1620923420257; 
 Thu, 13 May 2021 09:30:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxc8Rq7U8MaE0HbKTFcONDAmCUSSaFRW+dRCnQLvlk0JlSL147U1Csh03bv70NI7Z+obYiZjg==
X-Received: by 2002:a0c:9ccc:: with SMTP id j12mr41602812qvf.30.1620923420002; 
 Thu, 13 May 2021 09:30:20 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id d74sm2764737qkc.87.2021.05.13.09.30.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 May 2021 09:30:19 -0700 (PDT)
Message-ID: <4cf27d40eb44caaee37792e5d35296cf70109702.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Nikola Cornij <nikola.cornij@amd.com>, amd-gfx@lists.freedesktop.org
Date: Thu, 13 May 2021 12:30:17 -0400
In-Reply-To: <20210512210011.8425-2-nikola.cornij@amd.com>
References: <20210512210011.8425-1-nikola.cornij@amd.com>
 <20210512210011.8425-2-nikola.cornij@amd.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/dp_mst: Use kHz as link rate
 units when settig source max link caps at init
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
Reply-To: lyude@redhat.com
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Meenakshikumar Somasundaram <meenakshikumar.somasundaram@amd.com>,
 James Jones <jajones@nvidia.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>, Ben Skeggs <bskeggs@redhat.com>,
 nouveau@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Mikita Lipski <mikita.lipski@amd.com>, Chris Park <Chris.Park@amd.com>,
 Eryk Brol <eryk.brol@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Wayne Lin <Wayne.Lin@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpXaWxsIGxldCB0aGlz
IHNpdCBvbiB0aGUgbGlzdCBmb3IgYSBmZXcgZGF5cyB0byBzZWUgaWYgYW55b25lJ3MgZ290IGFu
eQpvYmplY3Rpb25zIGFuZCB0aGVuIEknbGwgZ28gYWhlYWQgYW5kIHB1c2ggaXQKCk9uIFdlZCwg
MjAyMS0wNS0xMiBhdCAxNzowMCAtMDQwMCwgTmlrb2xhIENvcm5paiB3cm90ZToKPiBbd2h5XQo+
IExpbmsgcmF0ZSBpbiBrSHogaXMgd2hhdCBpcyBldmVudHVhbGx5IHJlcXVpcmVkIHRvIGNhbGN1
bGF0ZSB0aGUgbGluawo+IGJhbmR3aWR0aCwgd2hpY2ggbWFrZXMga0h6IGEgbW9yZSBnZW5lcmlj
IHVuaXQuIFRoaXMgc2hvdWxkIGFsc28gbWFrZQo+IGZvcndhcmQtY29tcGF0aWJpbGl0eSB3aXRo
IG5ldyBEUCBzdGFuZGFyZHMgZWFzaWVyLgo+IAo+IFtob3ddCj4gLSBSZXBsYWNlICdsaW5rIHJh
dGUgRFBDRCBjb2RlJyB3aXRoICdsaW5rIHJhdGUgaW4ga0h6JyB3aGVuIHVzZWQgd2l0aAo+IGRy
bV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2luaXQoKQo+IC0gQWRkL3JlbW92ZSByZWxhdGVkIERQQ0Qg
Y29kZSBjb252ZXJzaW9uIGZyb20vdG8ga0h6IHdoZXJlIGFwcGxpY2FibGUKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBOaWtvbGEgQ29ybmlqIDxuaWtvbGEuY29ybmlqQGFtZC5jb20+Cj4gQWNrZWQtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gwqAuLi4vZ3B1L2Ry
bS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX21zdF90eXBlcy5jwqDCoCB8IDQgKyst
LQo+IMKgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuY8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA4ICsrKystLS0tCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IDQgKystLQo+IMKgZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNSArKystLQo+IMKgZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yYWRlb25fZHBfbXN0LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8IDIgKy0KPiDCoGluY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgOCArKysr
LS0tLQo+IMKgNiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9k
bS9hbWRncHVfZG1fbXN0X3R5cGVzLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9h
bWRncHVfZG0vYW1kZ3B1X2RtX21zdF90eXBlcy5jCj4gaW5kZXggNGEwYzI0Y2U1ZjdkLi5mNzhk
ZDAyMWY1OTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdw
dV9kbS9hbWRncHVfZG1fbXN0X3R5cGVzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rp
c3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9tc3RfdHlwZXMuYwo+IEBAIC00NTgsOCArNDU4LDgg
QEAgdm9pZCBhbWRncHVfZG1faW5pdGlhbGl6ZV9kcF9jb25uZWN0b3Ioc3RydWN0Cj4gYW1kZ3B1
X2Rpc3BsYXlfbWFuYWdlciAqZG0sCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAm
YWNvbm5lY3Rvci0+ZG1fZHBfYXV4LmF1eCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoDE2LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgNCwKPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgKHU4KW1heF9saW5rX2VuY19jYXAubGFuZV9jb3VudCwKPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKHU4KW1heF9saW5rX2VuY19jYXAubGlua19y
YXRlLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGlua19lbmNfY2FwLmxh
bmVfY291bnQsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9id19jb2Rl
X3RvX2xpbmtfcmF0ZShtYXhfbGlua19lbmNfY2FwLmxpbmtfcmF0ZSksCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBhY29ubmVjdG9yLT5jb25uZWN0b3JfaWQpOwo+IMKgCj4gwqDC
oMKgwqDCoMKgwqDCoGRybV9jb25uZWN0b3JfYXR0YWNoX2RwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0
eSgmYWNvbm5lY3Rvci0+YmFzZSk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZHBfbXN0X3RvcG9sb2d5LmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5
LmMKPiBpbmRleCA1NDYwNDYzM2U2NWMuLjMyYjdmODk4M2I5NCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+IEBAIC0zNzIyLDkgKzM3MjIsOSBAQCBpbnQgZHJtX2Rw
X21zdF90b3BvbG9neV9tZ3Jfc2V0X21zdChzdHJ1Y3QKPiBkcm1fZHBfbXN0X3RvcG9sb2d5X21n
ciAqbWdyLCBib29sIG1zCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhbmVfY291bnQgPSBtaW5fdChpbnQs
IG1nci0+ZHBjZFsyXSAmIERQX01BWF9MQU5FX0NPVU5UX01BU0ssCj4gbWdyLT5tYXhfbGFuZV9j
b3VudCk7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbmtfcmF0ZSA9IG1pbl90
KGludCwgbWdyLT5kcGNkWzFdLCBtZ3ItPm1heF9saW5rX3JhdGUpOwo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBsaW5rX3JhdGUgPSBtaW5fdChpbnQsIGRybV9kcF9id19jb2RlX3Rv
X2xpbmtfcmF0ZShtZ3ItCj4gPmRwY2RbMV0pLCBtZ3ItPm1heF9saW5rX3JhdGUpOwo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWdyLT5wYm5fZGl2ID0gZHJtX2RwX2dldF92Y19w
YXlsb2FkX2J3KG1nciwKPiAtCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBfYndfY29kZV90b19saW5rX3IKPiBhdGUobGlua19yYXRl
KSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBsaW5rX3JhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGxhbmVfY291bnQpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKG1nci0+cGJuX2RpdiA9PSAwKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gLUVJTlZBTDsKPiBAQCAtNTQ1NCw3ICs1NDU0LDcg
QEAgRVhQT1JUX1NZTUJPTChkcm1fYXRvbWljX2dldF9tc3RfdG9wb2xvZ3lfc3RhdGUpOwo+IMKg
ICogQG1heF9kcGNkX3RyYW5zYWN0aW9uX2J5dGVzOiBodyBzcGVjaWZpYyBEUENEIHRyYW5zYWN0
aW9uIGxpbWl0Cj4gwqAgKiBAbWF4X3BheWxvYWRzOiBtYXhpbXVtIG51bWJlciBvZiBwYXlsb2Fk
cyB0aGlzIEdQVSBjYW4gc291cmNlCj4gwqAgKiBAbWF4X2xhbmVfY291bnQ6IG1heGltdW0gbnVt
YmVyIG9mIGxhbmVzIHRoaXMgR1BVIHN1cHBvcnRzCj4gLSAqIEBtYXhfbGlua19yYXRlOiBtYXhp
bXVtIGxpbmsgcmF0ZSB0aGlzIEdQVSBzdXBwb3J0cywgdW5pdHMgYXMgaW4gRFBDRAo+ICsgKiBA
bWF4X2xpbmtfcmF0ZTogbWF4aW11bSBsaW5rIHJhdGUgcGVyIGxhbmUgdGhpcyBHUFUgc3VwcG9y
dHMgaW4ga0h6Cj4gwqAgKiBAY29ubl9iYXNlX2lkOiB0aGUgY29ubmVjdG9yIG9iamVjdCBJRCB0
aGUgTVNUIGRldmljZSBpcyBjb25uZWN0ZWQgdG8uCj4gwqAgKgo+IMKgICogUmV0dXJuIDAgZm9y
IHN1Y2Nlc3MsIG9yIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZQo+IEBAIC01NDYyLDcg
KzU0NjIsNyBAQCBFWFBPUlRfU1lNQk9MKGRybV9hdG9taWNfZ2V0X21zdF90b3BvbG9neV9zdGF0
ZSk7Cj4gwqBpbnQgZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW5pdChzdHJ1Y3QgZHJtX2RwX21z
dF90b3BvbG9neV9tZ3IgKm1nciwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0
cnVjdCBkcm1fZHBfYXV4Cj4gKmF1eCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBtYXhfZHBjZF90cmFuc2FjdGlv
bl9ieXRlcywgaW50Cj4gbWF4X3BheWxvYWRzLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1OCBtYXhfbGFuZV9jb3VudCwg
dTggbWF4X2xpbmtfcmF0ZSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG1heF9sYW5lX2NvdW50LCBpbnQgbWF4X2xp
bmtfcmF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGludCBjb25uX2Jhc2VfaWQpCj4gwqB7Cj4gwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X3N0YXRlICptc3Rfc3RhdGU7Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBpbmRleCBmNjA4YzBj
Yjk4ZjQuLjI2ZjY1NDQ1YmM4YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9tc3QuYwo+IEBAIC05NjAsOCArOTYwLDggQEAgaW50ZWxfZHBfbXN0X2VuY29k
ZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Cj4gKmRpZ19wb3J0LCBpbnQgY29ubl9i
YXNlX2lkKQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3RfZW5jb2Rl
cnMoZGlnX3BvcnQpOwo+IMKgwqDCoMKgwqDCoMKgwqByZXQgPSBkcm1fZHBfbXN0X3RvcG9sb2d5
X21ncl9pbml0KCZpbnRlbF9kcC0+bXN0X21nciwgJmk5MTUtPmRybSwKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgJmludGVsX2RwLT5hdXgsIDE2LCAzLAo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICh1OClkaWdfcG9ydC0+bWF4X2xhbmVzLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgCj4gZHJtX2RwX2xpbmtfcmF0ZV90b19id19jb2RlKG1heF9zb3VyY2VfcmF0ZSksCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGlnX3BvcnQtPm1heF9sYW5lcywKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBtYXhfc291cmNlX3JhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbm5fYmFzZV9pZCk7Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Owo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMKPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYwo+IGluZGV4IGM0NmQwMzc0YjZlNi4uZjk0OTc2NzY5
OGZjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3Au
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYwo+IEBAIC0x
NjE3LDggKzE2MTcsOSBAQCBudjUwX21zdG1fbmV3KHN0cnVjdCBub3V2ZWF1X2VuY29kZXIgKm91
dHAsIHN0cnVjdAo+IGRybV9kcF9hdXggKmF1eCwgaW50IGF1eF9tYXgsCj4gwqDCoMKgwqDCoMKg
wqDCoG1zdG0tPm1nci5jYnMgPSAmbnY1MF9tc3RtOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoHJl
dCA9IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2luaXQoJm1zdG0tPm1nciwgZGV2LCBhdXgsIGF1
eF9tYXgsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKHU4KW1heF9wYXlsb2Fkcywgb3V0
cC0+ZGNiLQo+ID5kcGNvbmYubGlua19uciwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAo
dTgpb3V0cC0+ZGNiLT5kcGNvbmYubGlua19idywKPiBjb25uX2Jhc2VfaWQpOwo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG1heF9wYXlsb2Fkcywgb3V0cC0+ZGNiLQo+ID5kcGNvbmYubGlu
a19uciwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fZHBfYndfY29kZV90b19saW5r
X3JhdGUob3V0cC0KPiA+ZGNiLT5kcGNvbmYubGlua19idyksCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29ubl9iYXNlX2lkKTsKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7Cj4gwqAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZHBfbXN0LmMKPiBiL2RyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX2RwX21zdC5jCj4gaW5kZXggMTMwNzJjMmE2NTAyLi5lYzg2N2Zh
ODgwYTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZHBfbXN0
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kcF9tc3QuYwo+IEBAIC02
NDIsNyArNjQyLDcgQEAgcmFkZW9uX2RwX21zdF9pbml0KHN0cnVjdCByYWRlb25fY29ubmVjdG9y
Cj4gKnJhZGVvbl9jb25uZWN0b3IpCj4gwqDCoMKgwqDCoMKgwqDCoHJhZGVvbl9jb25uZWN0b3It
Pm1zdF9tZ3IuY2JzID0gJm1zdF9jYnM7Cj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBkcm1fZHBf
bXN0X3RvcG9sb2d5X21ncl9pbml0KCZyYWRlb25fY29ubmVjdG9yLT5tc3RfbWdyLCBkZXYsCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnJhZGVvbl9jb25uZWN0b3ItPmRkY19idXMt
PmF1eCwKPiAxNiwgNiwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDQsICh1OCltYXhf
bGlua19yYXRlLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNCwKPiBkcm1fZHBfYndf
Y29kZV90b19saW5rX3JhdGUobWF4X2xpbmtfcmF0ZSksCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmFkZW9uX2Nvbm5lY3Rvci0+YmFzZS5iYXNlLmlkKTsKPiDCoH0KPiDCoAo+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oIGIvaW5jbHVkZS9kcm0v
ZHJtX2RwX21zdF9oZWxwZXIuaAo+IGluZGV4IGM4N2E4MjliNjQ5OC4uZGRiOTIzMWQwMzA5IDEw
MDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmgKPiArKysgYi9pbmNs
dWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCj4gQEAgLTU5NiwxMSArNTk2LDExIEBAIHN0cnVj
dCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciB7Cj4gwqDCoMKgwqDCoMKgwqDCoC8qKgo+IMKgwqDC
oMKgwqDCoMKgwqAgKiBAbWF4X2xhbmVfY291bnQ6IG1heGltdW0gbnVtYmVyIG9mIGxhbmVzIHRo
ZSBHUFUgY2FuIGRyaXZlLgo+IMKgwqDCoMKgwqDCoMKgwqAgKi8KPiAtwqDCoMKgwqDCoMKgwqB1
OCBtYXhfbGFuZV9jb3VudDsKPiArwqDCoMKgwqDCoMKgwqBpbnQgbWF4X2xhbmVfY291bnQ7Cj4g
wqDCoMKgwqDCoMKgwqDCoC8qKgo+IC3CoMKgwqDCoMKgwqDCoCAqIEBtYXhfbGlua19yYXRlOiBt
YXhpbXVtIGxpbmsgcmF0ZSBwZXIgbGFuZSBHUFUgY2FuIG91dHB1dC4KPiArwqDCoMKgwqDCoMKg
wqAgKiBAbWF4X2xpbmtfcmF0ZTogbWF4aW11bSBsaW5rIHJhdGUgcGVyIGxhbmUgR1BVIGNhbiBv
dXRwdXQsIGluIGtIei4KPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gLcKgwqDCoMKgwqDCoMKgdTgg
bWF4X2xpbmtfcmF0ZTsKPiArwqDCoMKgwqDCoMKgwqBpbnQgbWF4X2xpbmtfcmF0ZTsKPiDCoMKg
wqDCoMKgwqDCoMKgLyoqCj4gwqDCoMKgwqDCoMKgwqDCoCAqIEBjb25uX2Jhc2VfaWQ6IERSTSBj
b25uZWN0b3IgSUQgdGhpcyBtZ3IgaXMgY29ubmVjdGVkIHRvLiBPbmx5IHVzZWQKPiDCoMKgwqDC
oMKgwqDCoMKgICogdG8gYnVpbGQgdGhlIE1TVCBjb25uZWN0b3IgcGF0aCB2YWx1ZS4KPiBAQCAt
Nzc0LDcgKzc3NCw3IEBAIGludCBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncl9pbml0KHN0cnVjdAo+
IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCBzdHJ1Y3QgZHJtX2RwX2F1eAo+ICphdXgsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgbWF4X2RwY2Rf
dHJhbnNhY3Rpb25fYnl0ZXMsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgbWF4X3BheWxvYWRzLAo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1
OCBtYXhfbGFuZV9jb3VudCwgdTggbWF4X2xpbmtfcmF0ZSwKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG1heF9sYW5l
X2NvdW50LCBpbnQgbWF4X2xpbmtfcmF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBjb25uX2Jhc2VfaWQpOwo+
IMKgCj4gwqB2b2lkIGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2Rlc3Ryb3koc3RydWN0IGRybV9k
cF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IpOwoKLS0gClNpbmNlcmVseSwKICAgTHl1ZGUgUGF1bCAo
c2hlL2hlcikKICAgU29mdHdhcmUgRW5naW5lZXIgYXQgUmVkIEhhdAogICAKTm90ZTogSSBkZWFs
IHdpdGggYSBsb3Qgb2YgZW1haWxzIGFuZCBoYXZlIGEgbG90IG9mIGJ1Z3Mgb24gbXkgcGxhdGUu
IElmIHlvdSd2ZQphc2tlZCBtZSBhIHF1ZXN0aW9uLCBhcmUgd2FpdGluZyBmb3IgYSByZXZpZXcv
bWVyZ2Ugb24gYSBwYXRjaCwgZXRjLiBhbmQgSQpoYXZlbid0IHJlc3BvbmRlZCBpbiBhIHdoaWxl
LCBwbGVhc2UgZmVlbCBmcmVlIHRvIHNlbmQgbWUgYW5vdGhlciBlbWFpbCB0byBjaGVjawpvbiBt
eSBzdGF0dXMuIEkgZG9uJ3QgYml0ZSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
