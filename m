Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C9D306EE4
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 08:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E09A6E063;
	Thu, 28 Jan 2021 07:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 461566E063
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 07:22:37 +0000 (UTC)
IronPort-SDR: S+Dfkp/Bbvi4Ar1KGoHUIXYocpwxhK/emaBYPg4fspXLv2jj0WjwHakTqG+PtpvpDfrYfecpXg
 raU9XWqisN1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="176683652"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; 
 d="scan'208,217";a="176683652"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 23:22:36 -0800
IronPort-SDR: mXQ5AhyPo7kxYcJJ6KH+e9l4CHgx0zO0Y9VcvHvhTqRg2vlgAyxK6eZdlkzoDBo+pJN5Xn0LD8
 xu61yBTVZZxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; 
 d="scan'208,217";a="407428366"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2021 23:22:36 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 27 Jan 2021 23:22:35 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 Jan 2021 12:52:33 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 28 Jan 2021 12:52:33 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Sean
 Paul" <sean@poorly.run>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvaGRjcDogRGlzYWJsZSB0aGUgUVNFUyBjaGVjayBmb3IgSERDUCAxLjQg?=
 =?utf-8?Q?over_MST_(rev2)?=
Thread-Index: AQHW9UQN9+tyXBUClkGyvHKPIaoyZqo8odTQ
Date: Thu, 28 Jan 2021 07:22:33 +0000
Message-ID: <f4e4dfdae6704a5b9bbec9c07845a9e2@intel.com>
References: <20210106223909.34476-1-sean@poorly.run>
 <161181753584.13618.2080752566635151941@emeril.freedesktop.org>
In-Reply-To: <161181753584.13618.2080752566635151941@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Disable_the_QSES_check_for_HDCP_1=2E4_over_MST_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============0567427577=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0567427577==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f4e4dfdae6704a5b9bbec9c07845a9e2intelcom_"

--_000_f4e4dfdae6704a5b9bbec9c07845a9e2intelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0Lg0KDQpGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFBhdGNod29yaw0KU2Vu
dDogVGh1cnNkYXksIEphbnVhcnkgMjgsIDIwMjEgMTI6MzYgUE0NClRvOiBTZWFuIFBhdWwgPHNl
YW5AcG9vcmx5LnJ1bj4NCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJq
ZWN0OiBbSW50ZWwtZ2Z4XSDinJMgRmkuQ0kuSUdUOiBzdWNjZXNzIGZvciBkcm0vaTkxNS9oZGNw
OiBEaXNhYmxlIHRoZSBRU0VTIGNoZWNrIGZvciBIRENQIDEuNCBvdmVyIE1TVCAocmV2MikNCg0K
UGF0Y2ggRGV0YWlscw0KU2VyaWVzOg0KDQpkcm0vaTkxNS9oZGNwOiBEaXNhYmxlIHRoZSBRU0VT
IGNoZWNrIGZvciBIRENQIDEuNCBvdmVyIE1TVCAocmV2MikNCg0KVVJMOg0KDQpodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzg1NTU1Lw0KDQpTdGF0ZToNCg0Kc3VjY2Vz
cw0KDQpEZXRhaWxzOg0KDQpodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xOTQ0Ny9pbmRleC5odG1sDQoNCkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20g
Q0lfRFJNXzk2NjZfZnVsbCAtPiBQYXRjaHdvcmtfMTk0NDdfZnVsbA0KU3VtbWFyeQ0KDQpTVUND
RVNTDQoNCk5vIHJlZ3Jlc3Npb25zIGZvdW5kLg0KDQpFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE5NDQ3L2luZGV4Lmh0bWwN
Cg0KQ2hhbmdlcw0KDQpObyBjaGFuZ2VzIGZvdW5kDQoNClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEw
IC0+IDgpDQoNCk1pc3NpbmcgKDIpOiBwaWctc2tsLTYyNjB1IHBpZy1nbGstajUwMDUNCg0KQnVp
bGQgY2hhbmdlcw0KDQogICogICBDSTogQ0ktMjAxOTA1MjkgLT4gTm9uZQ0KICAqICAgTGludXg6
IENJX0RSTV85NjY2IC0+IFBhdGNod29ya18xOTQ0Nw0KICAqICAgUGlnbGl0OiBwaWdsaXRfNDUw
OSAtPiBOb25lDQoNCkNJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KQ0lfRFJNXzk2NjY6IDljY2JjNjUz
YmYyOTQ4ZDFmN2U5ZmYzMDBkZDc2NzliODg4ZmZhMjUgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9nZngtY2kvbGludXgNCklHVF81OTYyOiAyMmUzZGFhZWQ4MmFiNzg5MDAxOGEyZjJh
YWJmNTA4MmNkNTM2MDIzIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAv
aW50ZWwtZ3B1LXRvb2xzDQpQYXRjaHdvcmtfMTk0NDc6IDY5ZDdkYjAwM2ZhNDA2ZGY3ODUxYWIw
ODIzOWRkNDA5YTc4ZjQ0MjEgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kv
bGludXgNCnBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2
Njk0IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0DQo=

--_000_f4e4dfdae6704a5b9bbec9c07845a9e2intelcom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHRpdGxl
PlByb2plY3QgTGlzdCAtIFBhdGNod29yazwvdGl0bGU+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBE
ZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpXaW5nZGluZ3M7DQoJcGFu
b3NlLTE6NSAwIDAgMCAwIDAgMCAwIDAgMDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJD
YW1icmlhIE1hdGgiOw0KCXBhbm9zZS0xOjIgNCA1IDMgNSA0IDYgMyAyIDQ7fQ0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseTpDYWxpYnJpOw0KCXBhbm9zZS0xOjIgMTUgNSAyIDIgMiA0IDMgMiA0
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlNlZ29lIFVJIFN5bWJvbCI7DQoJcGFub3Nl
LTE6MiAxMSA1IDIgNCAyIDQgMiAyIDM7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNv
Tm9ybWFsLCBsaS5Nc29Ob3JtYWwsIGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250
LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmgxDQoJ
e21zby1zdHlsZS1wcmlvcml0eTo5Ow0KCW1zby1zdHlsZS1saW5rOiJIZWFkaW5nIDEgQ2hhciI7
DQoJbXNvLW1hcmdpbi10b3AtYWx0OmF1dG87DQoJbWFyZ2luLXJpZ2h0OjBpbjsNCgltc28tbWFy
Z2luLWJvdHRvbS1hbHQ6YXV0bzsNCgltYXJnaW4tbGVmdDowaW47DQoJZm9udC1zaXplOjI0LjBw
dDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCglmb250LXdlaWdodDpib2xk
O30NCmgyDQoJe21zby1zdHlsZS1wcmlvcml0eTo5Ow0KCW1zby1zdHlsZS1saW5rOiJIZWFkaW5n
IDIgQ2hhciI7DQoJbXNvLW1hcmdpbi10b3AtYWx0OmF1dG87DQoJbWFyZ2luLXJpZ2h0OjBpbjsN
Cgltc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzsNCgltYXJnaW4tbGVmdDowaW47DQoJZm9udC1z
aXplOjE4LjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCglmb250LXdl
aWdodDpib2xkO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9y
aXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFu
LkhlYWRpbmcxQ2hhcg0KCXttc28tc3R5bGUtbmFtZToiSGVhZGluZyAxIENoYXIiOw0KCW1zby1z
dHlsZS1wcmlvcml0eTo5Ow0KCW1zby1zdHlsZS1saW5rOiJIZWFkaW5nIDEiOw0KCWZvbnQtZmFt
aWx5OiJDYWxpYnJpIExpZ2h0IixzYW5zLXNlcmlmOw0KCWNvbG9yOiMyRjU0OTY7fQ0Kc3Bhbi5I
ZWFkaW5nMkNoYXINCgl7bXNvLXN0eWxlLW5hbWU6IkhlYWRpbmcgMiBDaGFyIjsNCgltc28tc3R5
bGUtcHJpb3JpdHk6OTsNCgltc28tc3R5bGUtbGluazoiSGVhZGluZyAyIjsNCglmb250LWZhbWls
eToiQ2FsaWJyaSBMaWdodCIsc2Fucy1zZXJpZjsNCgljb2xvcjojMkY1NDk2O30NCi5Nc29DaHBE
ZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7
fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBp
biAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rp
b24xO30NCi8qIExpc3QgRGVmaW5pdGlvbnMgKi8NCkBsaXN0IGwwDQoJe21zby1saXN0LWlkOjUx
OTkwMDQxNjsNCgltc28tbGlzdC10ZW1wbGF0ZS1pZHM6LTEyNzE5OTg4NTI7fQ0KQGxpc3QgbDA6
bGV2ZWwxDQoJe21zby1sZXZlbC1udW1iZXItZm9ybWF0OmJ1bGxldDsNCgltc28tbGV2ZWwtdGV4
dDrvgrc7DQoJbXNvLWxldmVsLXRhYi1zdG9wOi41aW47DQoJbXNvLWxldmVsLW51bWJlci1wb3Np
dGlvbjpsZWZ0Ow0KCXRleHQtaW5kZW50Oi0uMjVpbjsNCgltc28tYW5zaS1mb250LXNpemU6MTAu
MHB0Ow0KCWZvbnQtZmFtaWx5OlN5bWJvbDt9DQpAbGlzdCBsMDpsZXZlbDINCgl7bXNvLWxldmVs
LW51bWJlci1mb3JtYXQ6YnVsbGV0Ow0KCW1zby1sZXZlbC10ZXh0Om87DQoJbXNvLWxldmVsLXRh
Yi1zdG9wOjEuMGluOw0KCW1zby1sZXZlbC1udW1iZXItcG9zaXRpb246bGVmdDsNCgl0ZXh0LWlu
ZGVudDotLjI1aW47DQoJbXNvLWFuc2ktZm9udC1zaXplOjEwLjBwdDsNCglmb250LWZhbWlseToi
Q291cmllciBOZXciOw0KCW1zby1iaWRpLWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4iO30N
CkBsaXN0IGwwOmxldmVsMw0KCXttc28tbGV2ZWwtbnVtYmVyLWZvcm1hdDpidWxsZXQ7DQoJbXNv
LWxldmVsLXRleHQ674KnOw0KCW1zby1sZXZlbC10YWItc3RvcDoxLjVpbjsNCgltc28tbGV2ZWwt
bnVtYmVyLXBvc2l0aW9uOmxlZnQ7DQoJdGV4dC1pbmRlbnQ6LS4yNWluOw0KCW1zby1hbnNpLWZv
bnQtc2l6ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6V2luZ2RpbmdzO30NCkBsaXN0IGwwOmxldmVs
NA0KCXttc28tbGV2ZWwtbnVtYmVyLWZvcm1hdDpidWxsZXQ7DQoJbXNvLWxldmVsLXRleHQ674Kn
Ow0KCW1zby1sZXZlbC10YWItc3RvcDoyLjBpbjsNCgltc28tbGV2ZWwtbnVtYmVyLXBvc2l0aW9u
OmxlZnQ7DQoJdGV4dC1pbmRlbnQ6LS4yNWluOw0KCW1zby1hbnNpLWZvbnQtc2l6ZToxMC4wcHQ7
DQoJZm9udC1mYW1pbHk6V2luZ2RpbmdzO30NCkBsaXN0IGwwOmxldmVsNQ0KCXttc28tbGV2ZWwt
bnVtYmVyLWZvcm1hdDpidWxsZXQ7DQoJbXNvLWxldmVsLXRleHQ674KnOw0KCW1zby1sZXZlbC10
YWItc3RvcDoyLjVpbjsNCgltc28tbGV2ZWwtbnVtYmVyLXBvc2l0aW9uOmxlZnQ7DQoJdGV4dC1p
bmRlbnQ6LS4yNWluOw0KCW1zby1hbnNpLWZvbnQtc2l6ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6
V2luZ2RpbmdzO30NCkBsaXN0IGwwOmxldmVsNg0KCXttc28tbGV2ZWwtbnVtYmVyLWZvcm1hdDpi
dWxsZXQ7DQoJbXNvLWxldmVsLXRleHQ674KnOw0KCW1zby1sZXZlbC10YWItc3RvcDozLjBpbjsN
Cgltc28tbGV2ZWwtbnVtYmVyLXBvc2l0aW9uOmxlZnQ7DQoJdGV4dC1pbmRlbnQ6LS4yNWluOw0K
CW1zby1hbnNpLWZvbnQtc2l6ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6V2luZ2RpbmdzO30NCkBs
aXN0IGwwOmxldmVsNw0KCXttc28tbGV2ZWwtbnVtYmVyLWZvcm1hdDpidWxsZXQ7DQoJbXNvLWxl
dmVsLXRleHQ674KnOw0KCW1zby1sZXZlbC10YWItc3RvcDozLjVpbjsNCgltc28tbGV2ZWwtbnVt
YmVyLXBvc2l0aW9uOmxlZnQ7DQoJdGV4dC1pbmRlbnQ6LS4yNWluOw0KCW1zby1hbnNpLWZvbnQt
c2l6ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6V2luZ2RpbmdzO30NCkBsaXN0IGwwOmxldmVsOA0K
CXttc28tbGV2ZWwtbnVtYmVyLWZvcm1hdDpidWxsZXQ7DQoJbXNvLWxldmVsLXRleHQ674KnOw0K
CW1zby1sZXZlbC10YWItc3RvcDo0LjBpbjsNCgltc28tbGV2ZWwtbnVtYmVyLXBvc2l0aW9uOmxl
ZnQ7DQoJdGV4dC1pbmRlbnQ6LS4yNWluOw0KCW1zby1hbnNpLWZvbnQtc2l6ZToxMC4wcHQ7DQoJ
Zm9udC1mYW1pbHk6V2luZ2RpbmdzO30NCkBsaXN0IGwwOmxldmVsOQ0KCXttc28tbGV2ZWwtbnVt
YmVyLWZvcm1hdDpidWxsZXQ7DQoJbXNvLWxldmVsLXRleHQ674KnOw0KCW1zby1sZXZlbC10YWIt
c3RvcDo0LjVpbjsNCgltc28tbGV2ZWwtbnVtYmVyLXBvc2l0aW9uOmxlZnQ7DQoJdGV4dC1pbmRl
bnQ6LS4yNWluOw0KCW1zby1hbnNpLWZvbnQtc2l6ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6V2lu
Z2RpbmdzO30NCm9sDQoJe21hcmdpbi1ib3R0b206MGluO30NCnVsDQoJe21hcmdpbi1ib3R0b206
MGluO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1
bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEt
LVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzpp
ZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtl
bmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0i
cHVycGxlIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNl
Y3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlB1c2hlZCB0byBkcm0taW50ZWwtbmV4dC48
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgYmx1ZSAxLjVwdDtw
YWRkaW5nOjBpbiAwaW4gMGluIDQuMHB0Ij4NCjxkaXY+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9u
ZTtib3JkZXItdG9wOnNvbGlkICNFMUUxRTEgMS4wcHQ7cGFkZGluZzozLjBwdCAwaW4gMGluIDBp
biI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj5Gcm9tOjwvYj4gSW50ZWwtZ2Z4ICZsdDtpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmcmZ3Q7DQo8Yj5PbiBCZWhhbGYgT2Yg
PC9iPlBhdGNod29yazxicj4NCjxiPlNlbnQ6PC9iPiBUaHVyc2RheSwgSmFudWFyeSAyOCwgMjAy
MSAxMjozNiBQTTxicj4NCjxiPlRvOjwvYj4gU2VhbiBQYXVsICZsdDtzZWFuQHBvb3JseS5ydW4m
Z3Q7PGJyPg0KPGI+Q2M6PC9iPiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPGJyPg0K
PGI+U3ViamVjdDo8L2I+IFtJbnRlbC1nZnhdIDxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVv
dDtTZWdvZSBVSSBTeW1ib2wmcXVvdDssc2Fucy1zZXJpZiI+DQrinJM8L3NwYW4+IEZpLkNJLklH
VDogc3VjY2VzcyBmb3IgZHJtL2k5MTUvaGRjcDogRGlzYWJsZSB0aGUgUVNFUyBjaGVjayBmb3Ig
SERDUCAxLjQgb3ZlciBNU1QgKHJldjIpPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48Yj5QYXRjaCBEZXRhaWxzPC9iPiA8bzpwPjwvbzpwPjwvcD4NCjx0YWJsZSBjbGFz
cz0iTXNvTm9ybWFsVGFibGUiIGJvcmRlcj0iMCIgY2VsbHNwYWNpbmc9IjMiIGNlbGxwYWRkaW5n
PSIwIj4NCjx0Ym9keT4NCjx0cj4NCjx0ZCBzdHlsZT0icGFkZGluZzoyLjBwdCAyLjBwdCAyLjBw
dCAyLjBwdCI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj5TZXJpZXM6PC9iPjxvOnA+PC9vOnA+
PC9wPg0KPC90ZD4NCjx0ZCBzdHlsZT0icGFkZGluZzoyLjBwdCAyLjBwdCAyLjBwdCAyLjBwdCI+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5kcm0vaTkxNS9oZGNwOiBEaXNhYmxlIHRoZSBRU0VTIGNo
ZWNrIGZvciBIRENQIDEuNCBvdmVyIE1TVCAocmV2Mik8bzpwPjwvbzpwPjwvcD4NCjwvdGQ+DQo8
L3RyPg0KPHRyPg0KPHRkIHN0eWxlPSJwYWRkaW5nOjIuMHB0IDIuMHB0IDIuMHB0IDIuMHB0Ij4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPlVSTDo8L2I+PG86cD48L286cD48L3A+DQo8L3RkPg0K
PHRkIHN0eWxlPSJwYWRkaW5nOjIuMHB0IDIuMHB0IDIuMHB0IDIuMHB0Ij4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxhIGhyZWY9Imh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvODU1NTUvIj5odHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzg1NTU1
LzwvYT48bzpwPjwvbzpwPjwvcD4NCjwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkIHN0eWxlPSJwYWRk
aW5nOjIuMHB0IDIuMHB0IDIuMHB0IDIuMHB0Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPlN0
YXRlOjwvYj48bzpwPjwvbzpwPjwvcD4NCjwvdGQ+DQo8dGQgc3R5bGU9InBhZGRpbmc6Mi4wcHQg
Mi4wcHQgMi4wcHQgMi4wcHQiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+c3VjY2VzczxvOnA+PC9v
OnA+PC9wPg0KPC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQgc3R5bGU9InBhZGRpbmc6Mi4wcHQgMi4w
cHQgMi4wcHQgMi4wcHQiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+RGV0YWlsczo8L2I+PG86
cD48L286cD48L3A+DQo8L3RkPg0KPHRkIHN0eWxlPSJwYWRkaW5nOjIuMHB0IDIuMHB0IDIuMHB0
IDIuMHB0Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxhIGhyZWY9Imh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE5NDQ3L2luZGV4Lmh0bWwiPmh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE5NDQ3L2luZGV4
Lmh0bWw8L2E+PG86cD48L286cD48L3A+DQo8L3RkPg0KPC90cj4NCjwvdGJvZHk+DQo8L3RhYmxl
Pg0KPGgxPkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzk2NjZfZnVsbCAtJmd0OyBQ
YXRjaHdvcmtfMTk0NDdfZnVsbDxvOnA+PC9vOnA+PC9oMT4NCjxoMj5TdW1tYXJ5PG86cD48L286
cD48L2gyPg0KPHA+PHN0cm9uZz48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJy
aSZxdW90OyxzYW5zLXNlcmlmIj5TVUNDRVNTPC9zcGFuPjwvc3Ryb25nPjxvOnA+PC9vOnA+PC9w
Pg0KPHA+Tm8gcmVncmVzc2lvbnMgZm91bmQuPG86cD48L286cD48L3A+DQo8cD5FeHRlcm5hbCBV
Ukw6IDxhIGhyZWY9Imh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE5NDQ3L2luZGV4Lmh0bWwiPg0KaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk0NDcvaW5kZXguaHRtbDwvYT48bzpwPjwvbzpwPjwvcD4N
CjxoMj5DaGFuZ2VzPG86cD48L286cD48L2gyPg0KPHA+Tm8gY2hhbmdlcyBmb3VuZDxvOnA+PC9v
OnA+PC9wPg0KPGgyPlBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0mZ3Q7IDgpPG86cD48L286cD48
L2gyPg0KPHA+TWlzc2luZyAoMik6IHBpZy1za2wtNjI2MHUgcGlnLWdsay1qNTAwNSA8bzpwPjwv
bzpwPjwvcD4NCjxoMj5CdWlsZCBjaGFuZ2VzPG86cD48L286cD48L2gyPg0KPHVsIHR5cGU9ImRp
c2MiPg0KPGxpIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0
bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzttc28tbGlzdDpsMCBsZXZlbDEgbGZvMSI+DQpD
STogQ0ktMjAxOTA1MjkgLSZndDsgTm9uZTxvOnA+PC9vOnA+PC9saT48bGkgY2xhc3M9Ik1zb05v
cm1hbCIgc3R5bGU9Im1zby1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFs
dDphdXRvO21zby1saXN0OmwwIGxldmVsMSBsZm8xIj4NCkxpbnV4OiBDSV9EUk1fOTY2NiAtJmd0
OyBQYXRjaHdvcmtfMTk0NDc8bzpwPjwvbzpwPjwvbGk+PGxpIGNsYXNzPSJNc29Ob3JtYWwiIHN0
eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bztt
c28tbGlzdDpsMCBsZXZlbDEgbGZvMSI+DQpQaWdsaXQ6IHBpZ2xpdF80NTA5IC0mZ3Q7IE5vbmU8
bzpwPjwvbzpwPjwvbGk+PC91bD4NCjxwPkNJLTIwMTkwNTI5OiAyMDE5MDUyOTxicj4NCkNJX0RS
TV85NjY2OiA5Y2NiYzY1M2JmMjk0OGQxZjdlOWZmMzAwZGQ3Njc5Yjg4OGZmYTI1IEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4PGJyPg0KSUdUXzU5NjI6IDIyZTNk
YWFlZDgyYWI3ODkwMDE4YTJmMmFhYmY1MDgyY2Q1MzYwMjMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHM8YnI+DQpQYXRjaHdvcmtfMTk0NDc6
IDY5ZDdkYjAwM2ZhNDA2ZGY3ODUxYWIwODIzOWRkNDA5YTc4ZjQ0MjEgQCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXg8YnI+DQpwaWdsaXRfNDUwOTogZmRjNWE0Y2Ex
MTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5NzMzNjY5NCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL3BpZ2xpdDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwv
aHRtbD4NCg==

--_000_f4e4dfdae6704a5b9bbec9c07845a9e2intelcom_--

--===============0567427577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0567427577==--
