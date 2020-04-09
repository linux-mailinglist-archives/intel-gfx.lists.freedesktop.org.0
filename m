Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F5C1A2EEB
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 08:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B216EB48;
	Thu,  9 Apr 2020 06:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F7A6EB47;
 Thu,  9 Apr 2020 06:01:23 +0000 (UTC)
IronPort-SDR: 7sBpXAtktZiArDK51DClcEQiNRWNhBn8lJ5xFPm1mc0ZQkzw2fGOiddpKIy8rAiDmw6+quP/wR
 Rs39XO4XfDoA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 23:01:18 -0700
IronPort-SDR: R5TtvF7TFdMTM0x7JBvwW6sb7Zob361WJO4YMlXPbmbsfBUtM3Gd269tbWAK0AIXscNNYBOR/o
 Cc4gogo945Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,361,1580803200"; 
 d="asc'?scan'208";a="362063168"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2020 23:01:11 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Apr 2020 07:01:10 +0100
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Apr 2020 07:01:10 +0100
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Thu, 9 Apr 2020 07:01:10 +0100
From: "Peres, Martin" <martin.peres@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "igt-dev@lists.freedesktop.org"
 <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] intel-ci: Drop gem_exec_suspend@basic-S4-device
 from BAT
Thread-Index: AQHWDjRELUx1mOL+EEixOHK4fhcHBw==
Date: Thu, 9 Apr 2020 06:01:10 +0000
Message-ID: <f985417f67ed40a6866cf8d9ff975fa8@intel.com>
References: <20200408141921.2057263-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.62.1]
Content-Type: multipart/mixed;
 boundary="_002_f985417f67ed40a6866cf8d9ff975fa8intelcom_"
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel-ci: Drop
 gem_exec_suspend@basic-S4-device from BAT
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_002_f985417f67ed40a6866cf8d9ff975fa8intelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 2020-04-08 17:19, Chris Wilson wrote:=0A=
> S4-devices is a debug only path, and while it can prove informative as=0A=
> to the nature of suspend issues, being a debug only path it is not so=0A=
> relevant towards the driver health. Relegate it to the shards and idle=0A=
> runs, so we can shave 20s off BAT.=0A=
> =0A=
> gem_exec_suspend@basic itself is just a test suspend, a sanitycheck to=0A=
> ensure the test is functional, for manual debugging of the tests.=0A=
> =0A=
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>=0A=
> Cc: Martin Peres <martin.peres@linux.intel.com>=0A=
> Cc: Petri Latvala <petri.latvala@intel.com>=0A=
=0A=
Acked-by: Martin Peres <martin.peres@linux.intel.com>=0A=
> ---=0A=
>  tests/intel-ci/fast-feedback.testlist | 2 --=0A=
>  1 file changed, 2 deletions(-)=0A=
> =0A=
> diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-=
feedback.testlist=0A=
> index 620d5f3a7..2ccad4386 100644=0A=
> --- a/tests/intel-ci/fast-feedback.testlist=0A=
> +++ b/tests/intel-ci/fast-feedback.testlist=0A=
> @@ -23,10 +23,8 @@ igt@gem_exec_fence@nb-await=0A=
>  igt@gem_exec_gttfill@basic=0A=
>  igt@gem_exec_parallel@engines=0A=
>  igt@gem_exec_store@basic=0A=
> -igt@gem_exec_suspend@basic=0A=
>  igt@gem_exec_suspend@basic-s0=0A=
>  igt@gem_exec_suspend@basic-s3=0A=
> -igt@gem_exec_suspend@basic-s4-devices=0A=
>  igt@gem_flink_basic@bad-flink=0A=
>  igt@gem_flink_basic@bad-open=0A=
>  igt@gem_flink_basic@basic=0A=
> =0A=
=0A=

--_002_f985417f67ed40a6866cf8d9ff975fa8intelcom_
Content-Type: application/pgp-keys; name="pEpkey.asc"
Content-Description: pEpkey.asc
Content-Disposition: attachment; filename="pEpkey.asc"; size=1774;
	creation-date="Thu, 09 Apr 2020 06:01:10 GMT";
	modification-date="Thu, 09 Apr 2020 06:01:10 GMT"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUVOQkYzazA1Z0JDQUN5WmhP
WGExNGJUY3lUUWtjMVV5R2ZjNGx4ckhQREw1YXVPbkM3cUVIWkw1b3ZWd3NDCmF1ZlFaOVFKVWwx
NHh1OCt4dUl6UGoyWXhEbjFBeVJFN0RzSXNxNjVIaDlRa2YxQytFNmtHeHBDS2VXeFpEalIKS0xE
a2pQWmdRTTdOeHNFWkRkemNaTlFLUEt3OXBXUUovRCtrSUlyNDJYaERhbktyQ1pHV3Vxc3VwVGI4
YmM2agp3ZnBxVzV2eUp2WnVMSHcrTURhRVhoZ1Z0SlVWYVdSWENXbXFZQU1YWFlMMGh5NHVjRDZz
UWl3U2psK3JUU2NIClhqSHdhWURWWTI5bVFlR3lWMDMyeXBFWFQzWG1DVTJVT0hhNENNaktLR3ZK
MjRBU2Q5SFkyWHo4cmNyR1pTbGsKRkhMTGRwNUNET2wrRFU2Vjc5SWs5a3pPMFVxK0hXWDRtc2Z4
QUJFQkFBRzBLMDFoY25ScGJpQlFaWEpsY3lBOApiV0Z5ZEdsdUxuQmxjbVZ6UUd4cGJuVjRMbWx1
ZEdWc0xtTnZiVDZKQVZRRUV3RUlBRDRXSVFSTjlzUS9iN0dPClhRdkh5WUVDditaL002VXplUVVD
WGVUVG1RSWJBd1VKQWVFemdBVUxDUWdIQWdZVkNna0lDd0lFRmdJREFRSWUKQVFJWGdBQUtDUkFD
ditaL002VXplUmJ3Qi85ZHhZaG01WU14eGlSa2tZRVBrOE9DUGZjOGJwazF6RFc5Nkc0MgpLYVoz
RlRPRGNSMktjelg1ZVRMRFYwdklNRndqMmw0UXAvRFpzbVlsNzlKNDNhbHg1RHRIQUZJMlJHSis2
dXJhClFZMkovVXUvUWt5eEdrMTRpQUFzYytaalJSdWllQ1h0Wkc2THRMYmdsTUZCWUd4dzlWVEow
L0xhNHJjUVk3UksKOW1KM1QwWUxKMkJNNlVha3lUWEdzbnN0aWtOa2wzU0JKVDBJc1B1bVdGL240
a25penZQcG5BTGNQWGwwS3VtUwpuZDZ1b2dPT3VrQ0t4Z0RUWm1qRG9meDVvN1pveDI5blNkdjR3
aVJMOHVBeDRrY0pPOUxPOFhBN0lITzd6SXRTCmpXbWRXRmN4QTVicFRkRWR0TThIQWlCQkFaNU44
WXVraENuejltT0FFOXZLOXZydHVRRU5CRjNrMDVrQkNBREwKR3JGN1NBblB5NVo2R2ZlelZDclFm
dUlHSmhPemxuY0c2aFdHYU05YzlDVEtxSGZDNHROV1VFeHJmam5YNjBtRgpJbUx2aHhlRlZDOWJv
QS9jNGFVTmhEYy9NOUtqc08ycWRyd2d4QXl3bnIraVJqbzNORUJWQkF3T2NldWRRM0xPClZmZW5k
b296d3lqd3ZZRFV2QzNUcWtjajBsNmE2R3JqZTZWMVVTQ3RIL0ZlR2NONG9EMnZPOW1yWFlQb2hr
V2cKU3B2QUpPSEs5bk5nMUtaTjcvcDlXNUZMMlZZN2pIbHErd1gxZDBTRytRNlhjVHNEQUEyOStO
YmM1Qk0vcTJJTAphV1Fva0I0bzBaRjNsakZiN2RYZDNRZEpNWDdvNXRURzFMUi9TalZmbkZGckMw
K1IrZGhlRUVldGxVckRMRmF0CnhnRTdvREVPLzA4c2g5eHJPdzdMQUJFQkFBR0pBVHdFR0FFSUFD
WVdJUVJOOXNRL2I3R09YUXZIeVlFQ3YrWi8KTTZVemVRVUNYZVRUbVFJYkRBVUpBZUV6Z0FBS0NS
QUN2K1ovTTZVemVTMVRCLzlNbTFYTUhpbWtFbW15ZXNiMQpxdHFUY2htV2Q1NWhiRkIxMDRSbUx5
c0VrSU43Q3IweVNEZjBZRWxxd2QvSDlGWWVLUTVEWWJWWS9CclhjeGYzCmNKVDJBZ01Zdk54bHZ5
NHluR1F4Yy9YbXRzMGZVSno5cmRVVmZxZlFKbDlHZkR1U3dpQnhmb3BlN21aR2NIZWcKNzBaQTg3
Q0xJQ0FVbi9uRFpSekZuUHNhdUxJSU9sMGhxVWtJUml3WVp0WW9WZnNoVGhTNzNEcXNGS2U0Y25r
eApZcGVCRXNsYUduZnRMUC9uWDl6dkZ4SXJYUXBPdHJ2eWdkWklhMVMrZXhYM2NXMHNPYm02Zjk0
T3Q1Mjl3V3pTCnhJRjBvRnZPY3NlZ2ErL3FPK1hSNHNjbUJ1K3NUVU5FQnA1NWYyc0ptOWllVlU5
SXUwM2JYVnBMZGV3dTNtMEIKTTVtaAo9YzJPTwotLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9D
Sy0tLS0tCg==

--_002_f985417f67ed40a6866cf8d9ff975fa8intelcom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--_002_f985417f67ed40a6866cf8d9ff975fa8intelcom_--
