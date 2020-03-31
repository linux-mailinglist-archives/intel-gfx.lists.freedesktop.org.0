Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C3C1993CF
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 12:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FCB16E7D1;
	Tue, 31 Mar 2020 10:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D9146E7D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 10:46:38 +0000 (UTC)
IronPort-SDR: eVxz+q+xShnyUG4aAD+V6M2ogyhk5v7BmCT0k0tzYHMTo8kkK8OEvOZA4TRY59OXNnE2ifdmd7
 XDZgm978Dy1w==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 03:46:37 -0700
IronPort-SDR: j+RORJWMdpZZbvY814XFok7tvTiJvc6qFAsuPyOTgpCp8oBjQJjIDPRBm81yyq+y8TvxFlMCIT
 oEElEFz7Bd0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; 
 d="asc'?scan'208";a="422251747"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by orsmga005.jf.intel.com with ESMTP; 31 Mar 2020 03:46:36 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX109.ger.corp.intel.com (163.33.3.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 31 Mar 2020 11:46:35 +0100
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 31 Mar 2020 11:46:35 +0100
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Tue, 31 Mar 2020 11:46:35 +0100
From: "Peres, Martin" <martin.peres@intel.com>
To: "Latvala, Petri" <petri.latvala@intel.com>, Melissa Wen
 <melissa.srw@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH i-g-t] tests/kms_plane_alpha_blend: Correct
 typo in the name and comments of a subtest
Thread-Index: AQHWB0mlvr8ECOjodEGf4F9cGh4vlQ==
Date: Tue, 31 Mar 2020 10:46:35 +0000
Message-ID: <e6f59148eae545b69a8cbafac05a1d31@intel.com>
References: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
 <20200331094324.GG9497@platvala-desk.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.35.117]
Content-Type: multipart/mixed;
 boundary="_002_e6f59148eae545b69a8cbafac05a1d31intelcom_"
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/kms_plane_alpha_blend: Correct
 typo in the name and comments of a subtest
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_002_e6f59148eae545b69a8cbafac05a1d31intelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 2020-03-31 12:43, Petri Latvala wrote:=0A=
> On Mon, Mar 30, 2020 at 06:55:32PM -0300, Melissa Wen wrote:=0A=
>> Typo found in word transparent.=0A=
>> Correct the word transparant, replacing the last letter -a- with -e-=0A=
>> (transpar-a-nt to transpar-e-nt).=0A=
>>=0A=
>> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>=0A=
> =0A=
> =0A=
> Reviewed-by: Petri Latvala <petri.latvala@intel.com>=0A=
> =0A=
> Martin, test rename, ack when cibuglog side is ready to merge this.=0A=
> =0A=
=0A=
ACK, thanks for the patch Melissa!=0A=
=0A=
Martin=0A=

--_002_e6f59148eae545b69a8cbafac05a1d31intelcom_
Content-Type: application/pgp-keys; name="pEpkey.asc"
Content-Description: pEpkey.asc
Content-Disposition: attachment; filename="pEpkey.asc"; size=1774;
	creation-date="Tue, 31 Mar 2020 10:46:35 GMT";
	modification-date="Tue, 31 Mar 2020 10:46:35 GMT"
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

--_002_e6f59148eae545b69a8cbafac05a1d31intelcom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--_002_e6f59148eae545b69a8cbafac05a1d31intelcom_--
