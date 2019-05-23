Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B2827BF0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 13:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF10589DF7;
	Thu, 23 May 2019 11:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2924589DF7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 11:38:16 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4NBXe13052766;
 Thu, 23 May 2019 11:38:13 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 2smsk5hn64-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 11:38:13 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4NBc6DR073128;
 Thu, 23 May 2019 11:38:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2smshf6c4d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 11:38:12 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4NBcBVb021879;
 Thu, 23 May 2019 11:38:11 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 23 May 2019 11:38:10 +0000
Date: Thu, 23 May 2019 14:38:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20190523113804.GO19380@kadam>
References: <20190523103202.GN19380@kadam>
 <d20387de-7816-e7c5-1713-c000fb0bccd9@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d20387de-7816-e7c5-1713-c000fb0bccd9@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9265
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905230084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9265
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905230083
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=TI/zMwh8wkp+lFODX+CWQSm6ToTv2+FP3wbwtCbahOY=;
 b=NYvJMhYIadhDYrAFDmci3FkoqunbzCncRQgLO4dXfAFDbgTzJbbrh8b/kbO2LvwgdSdO
 iehrlMJAGmz6ljLq+OYvLV/uAlAOoasrkxc8XtgojczbKXkSLd9qXXf0Nustvw+CeKIX
 p8bvtBazqfJFJ9zpy6lv7fJyDs9sCHG+VgBnUp7W8unIQeM573vaLOdjGqueY9IpGXHY
 U6Lm2L2o/UOoxmYnUHeqTS6Z09rIFPtiOU8o93YIIJWZ9pQOvkfNy682XA6zDqu78jup
 5FRZsUhtTttzzK0Ur7kr2roI/u6EHl+pbCOb59G3Ho1est//45ygptZXUJgrW3S0gspG fQ== 
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: add support for perf
 configuration queries
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
Cc: intel-gfx@lists.freedesktop.org, kbuild@01.org, kbuild-all@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTI6MjU6NDRQTSArMDEwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj4gSGkgRGFuLAo+IAo+IE5vdCBxdWl0ZSBzdXJlIGlmIHlvdSByZWFkIHJlc3Bv
bnNlcyB0byB3aGF0IHNlZW1zIGxpa2UgYW4gYXV0b21hdGVkCj4gbWVzc2FnZS4KPiBJIGhhdmUg
YSBxdWVzdGlvbiBiZWxvdy4KPiAKPiBUaGFua3MsCj4gCj4gLUxpb25lbAo+IAo+IE9uIDIzLzA1
LzIwMTkgMTE6MzIsIERhbiBDYXJwZW50ZXIgd3JvdGU6Cj4gPiBIaSBMaW9uZWwsCj4gPiAKPiA+
IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoISBQZXJoYXBzIHNvbWV0aGluZyB0byBpbXByb3ZlOgo+
ID4gCj4gPiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdHMv
TGlvbmVsLUxhbmR3ZXJsaW4vZHJtLWk5MTUtVnVsa2FuLXBlcmZvcm1hbmNlLXF1ZXJ5LXN1cHBv
cnQvMjAxOTA1MjItMDgzMTE1Cj4gPiBiYXNlOiAgIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL2RybS1pbnRlbCBmb3ItbGludXgtbmV4dAo+ID4gCj4gPiBJZiB5b3UgZml4IHRoZSBpc3N1
ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4gPiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qg
cm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gPiBSZXBvcnRlZC1ieTogRGFuIENhcnBlbnRlciA8ZGFu
LmNhcnBlbnRlckBvcmFjbGUuY29tPgo+ID4gCj4gPiBzbWF0Y2ggd2FybmluZ3M6Cj4gPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmM6MjkwIHF1ZXJ5X3BlcmZfY29uZmlnX2RhdGEo
KSB3YXJuOiBpbmNvbnNpc3RlbnQgcmV0dXJucyAnbXV0ZXg6Jmk5MTUtPnBlcmYubWV0cmljc19s
b2NrJy4KPiA+ICAgIExvY2tlZCBvbjogICBsaW5lIDIyMAo+ID4gICAgVW5sb2NrZWQgb246IGxp
bmUgMTcwCj4gPiAKPiA+ICMgaHR0cHM6Ly9naXRodWIuY29tLzBkYXktY2kvbGludXgvY29tbWl0
LzJkZjVjNzg3NDFjNDRhZGE0ZTBiM2I3YjAxNjkyM2NiYmIzMGFiNzYKPiA+IGdpdCByZW1vdGUg
YWRkIGxpbnV4LXJldmlldyBodHRwczovL2dpdGh1Yi5jb20vMGRheS1jaS9saW51eAo+ID4gZ2l0
IHJlbW90ZSB1cGRhdGUgbGludXgtcmV2aWV3Cj4gPiBnaXQgY2hlY2tvdXQgMmRmNWM3ODc0MWM0
NGFkYTRlMGIzYjdiMDE2OTIzY2JiYjMwYWI3Ngo+ID4gdmltICsyOTAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9xdWVyeS5jCj4gPiAKPiA+IDJkZjVjNzg3IExpb25lbCBMYW5kd2VybGluIDIw
MTktMDUtMjEgIDE4NyAgCWlmIChfX2dldF91c2VyKGZsYWdzLCAmdXNlcl9xdWVyeV9jb25maWdf
cHRyLT5mbGFncykpCj4gPiAyZGY1Yzc4NyBMaW9uZWwgTGFuZHdlcmxpbiAyMDE5LTA1LTIxICAx
ODggIAkJcmV0dXJuIC1FRkFVTFQ7Cj4gPiAyZGY1Yzc4NyBMaW9uZWwgTGFuZHdlcmxpbiAyMDE5
LTA1LTIxICAxODkKPiA+IDJkZjVjNzg3IExpb25lbCBMYW5kd2VybGluIDIwMTktMDUtMjEgIDE5
MCAgCWlmIChmbGFncyAhPSAwKQo+ID4gMmRmNWM3ODcgTGlvbmVsIExhbmR3ZXJsaW4gMjAxOS0w
NS0yMSAgMTkxICAJCXJldHVybiAtRUlOVkFMOwo+ID4gMmRmNWM3ODcgTGlvbmVsIExhbmR3ZXJs
aW4gMjAxOS0wNS0yMSAgMTkyCj4gPiAyZGY1Yzc4NyBMaW9uZWwgTGFuZHdlcmxpbiAyMDE5LTA1
LTIxICAxOTMgIAlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmk5MTUtPnBlcmYubWV0
cmljc19sb2NrKTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBeXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXgo+ID4gCj4gPiBMb2NrCj4gCj4gCj4gV2hhdCBkbyB5b3UgbWVhbiBieSB0aGF0Pwo+
IAoKSnVzdCBvYnNlcnZpbmcgdGhhdCB3ZSB0YWtlIHRoZSBsb2NrIG9uIHRoaXMgbGluZS4KCjpQ
CgpyZWdhcmRzLApkYW4gY2FycGVudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
