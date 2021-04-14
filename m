Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1D935F2E9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C826E92E;
	Wed, 14 Apr 2021 11:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2042.outbound.protection.outlook.com [40.107.92.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 087716E425
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 01:40:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKEZWGBQCEktZNUH3kO9tqdIXXA8mCKc22ecuFojWTbweUSIc1GI1Vu12c1Sjb1iW8NFL60+/IMqO+Rv+J4JOtQq9rlkUTtNTOdknslMPG19Gg8elqTQR8k+Mg0epEgx3RM/cXh0N5QBR1s1g91AHya85kGz3n1ZR+l6fllAuBP/XITm3h4MHx9/oX93hb4locgIGCGnIVQSrgyUoCr+d43KlpTnAwipgwcO5UIviqwhCWpZQQeAbv8qiq0rbP3dF0VpBkuHGJe36jTtvSPrCBISmS8Rk21S7HYa3QMA3mqwHKjebwn3B0Lh7oz5om3OFPXOasUfHaASMZO7z9PilQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Eu5TOVRdwgEimizgnnZ/uVRrug9ODfwCLYlm8oTSIA=;
 b=PrdJPsdyYuxUoRi6jBQJpFtHwycNpmCn4bcJoyM4iiXPc/aKimEPsmekd2AnHXHvgsfFWVFuu2vYoS120UgvHeL/Xf4eMj+PZsnvmUMg+bXDLOmSV29EwPGhNMB4fKstuDrCTrLPm1bdOInYMA2LnOMHMUqXRATuqJE2sSuU61R92Qqd89xMMUYjVu+KN74hyr5rLf4aEgIKgXnZRC/Pufm4KCjprNpE3FUW3BRPlN0vV7PU2jh9ELEv7iC1JszIUY8g4KCYxtqlhYRnF2e1atSvP8jMt0vZxdWbs4Il1B40coeNwRe4vkTp7XOjkMIYS4dwL/Uz+WnZzwE8M0QO5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Eu5TOVRdwgEimizgnnZ/uVRrug9ODfwCLYlm8oTSIA=;
 b=nCMlpbs/86oFdKkDG1ZWroPB3IfLfC1n5MgxG0M8U8IJqG0I0hh4vigOB8u6T66fEdTaE0scTz8z6yhKpXIRjtiSEbq4YEx6uRIiXq6xftHSkBck8/CqgWg3Jtp9t3VScNDaBUxbodiFNkHg95l1Yf6Qkw+piI8Y8ofUrMY9WTU=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=windriver.com;
Received: from SN6PR11MB2592.namprd11.prod.outlook.com (2603:10b6:805:57::25)
 by SA2PR11MB4827.namprd11.prod.outlook.com (2603:10b6:806:11f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.18; Wed, 14 Apr
 2021 01:40:15 +0000
Received: from SN6PR11MB2592.namprd11.prod.outlook.com
 ([fe80::a135:6ae7:1d9f:b4db]) by SN6PR11MB2592.namprd11.prod.outlook.com
 ([fe80::a135:6ae7:1d9f:b4db%7]) with mapi id 15.20.4020.022; Wed, 14 Apr 2021
 01:40:15 +0000
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com
From: "jun.miao" <jun.miao@windriver.com>
Message-ID: <f7a84c7e-dfbe-95a3-ba9a-c23db2a8bbd1@windriver.com>
Date: Wed, 14 Apr 2021 09:40:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::18) To SN6PR11MB2592.namprd11.prod.outlook.com
 (2603:10b6:805:57::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.214] (60.247.85.82) by
 HK2P15301CA0008.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.1 via Frontend Transport; Wed, 14 Apr 2021 01:40:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d0ea3cf8-1ebb-4d8c-e704-08d8fee6401e
X-MS-TrafficTypeDiagnostic: SA2PR11MB4827:
X-Microsoft-Antispam-PRVS: <SA2PR11MB48275B0B53F5767ECA97FFC98E4E9@SA2PR11MB4827.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1F4iyVcKa3QuTrRoRH3rjrEFGcPYpo/uwcbzYfqNGVB0cbKiF3TnR7GkGyO88uzzT8RSR9Hfa7zQHgxzc6VXHIkx0Bfn0SM6P+uLCfD04RiaQJIEXRcHLikuYy4Orcv09AwYeoqwmxEMvNq9FeJm6Tb3PDonBiPXt6PAL13dJYxs0cCrDBbueyNuKOpBeRpYlI/IZjJt22D33d+GwPGrVlToHK9F6VH1lREyjcNn0JlaEbhqyYxooYJFU6sQRg3xXEzGRY84nclfnmCG4Rz54T+Sas0gI8qQ5E+jwmhiiPX/IEf2if3hBkT/a6dXrGTR1N6LkuXTbksSRn1t2RaLEkCJohESDWBRaOUyMrfI0QfPMXr5sexevrV+rwPemlsqLnWdfg9ial33Kh7iTH7AXtjfSPRk236W0q4hniGCx1gtBdA5wMWCyzMyQjPSc7/QgcgV+dUjDzMdlZfls6gQ879FDewo4zAjxTGpSXtzurf65jv7rvtt13B5lOB1r8/nxMZ8J4AcnuLD5fwRyGy59r7oxVzxfc1BS3J9O/CG97ubIFlHdKHBTm5Tq375mL1ed8lFTrAXtFs+R9UB0kwopvqhZJEs4sPEaGE7cS0THgdqcXFSUzG4z57HqcXSLmQOR0XvkuD7bfYrgwYAzeJf1AummCfsa3ZyvFTh9c/KtgFJ+aR5r5/cLjHqarPbKBQe7TEHtdmmqPYc4yot2gU4HgLMCswMv8w9H9VTiLh3RFdlo0yVH0wzQDzPrW2mv7HlacdbU10hwZ5jSuH5HO6LYwL8yhrLgYfJewXVKuHSM/Lz/F7gO+cmK+sSi2RjOtmP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(39850400004)(366004)(346002)(136003)(86362001)(478600001)(36756003)(16526019)(4326008)(6706004)(31686004)(2906002)(966005)(16576012)(5660300002)(83380400001)(26005)(38100700002)(38350700002)(956004)(2616005)(8936002)(6666004)(6486002)(52116002)(66476007)(66556008)(8676002)(31696002)(316002)(66946007)(186003)(78286007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: y3r04kuktiL9ktpNQK7dx6aROs/UyKJQMeT89bh5Y5Ka6tMlKiKmK/AfTRPly4RSDNdb79SF5EEScJpgbn/ykceljOzooAXFApalaxlwuJNaCwByH/MX9Ny7psH3lFJM3yWNL2tNVyI1+F8n/68DqFTf+jRX9DS67PPLUzqJ7eWp2JVe8DKY6comxcXR0CUweIWxs40E1KjvauETk4NYk76+UPzTg/r6dU2ze0g2J/mva0TNSGZerPa+UJ5gyjRhrl5Jss1Y8288spNP2oRBEJZLfIqz04W5e6luGgrUFU2c1mCjPwnC8Nxez3kEm1VjfazxI7G2JiuW6CZLI3RHbgkcDMVPC91n+mKXRNK2tpWI/qu7a7+A+DCqp8Enf+g21+VLIJNiljcP664TFRB4yoOrTS1u9bOQ/J7TLlrybKWcez1B3aC7/XgUqW04QRQAEwBl+8ghle/Anpq+QPB9Nl4yF3K9erEq3nUwCSz7De1/gnISH/+XUhemFfG2GOHf87gRgLeLBPOXNww3fBrWb+4f5U930Wv/0uF9OO+dbsJFBrr9JM06MJcrcby52wGdTV9vGNbjxok7ieMrOy8StVUR2+oEkKgi58g1nN9tMF/s9U8lDDyev+8K9WpAKlTVEV072h5vz8TJyHE5mJbqeTtrwRPpt1yo1Wursu+NjR0bWg8kaHpP7wMxl+v4a1dY6m39g75ytm4Wwsk7A77i/fDKR4qO82UFA8ilL5Dg7O0e0DV9gZjLcAzMocUqCgf/
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0ea3cf8-1ebb-4d8c-e704-08d8fee6401e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2021 01:40:14.7803 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pMywLza1UWds0Ax4ZbXKakg21Q7zNxRjyv4B03qA+puVenoOQXSNvmqPPsvjTCrIMcYMsEep5fz9cdErXXxRJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4827
X-Mailman-Approved-At: Wed, 14 Apr 2021 11:52:48 +0000
Subject: [Intel-gfx] RT-BUG report: i915/gt/intel_breadcrumbs.c
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

a2VybmVsIHZlcnNpb246IDUuMTAtcnQKCgpCVUc6IHNsZWVwaW5nIGZ1bmN0aW9uIGNhbGxlZCBm
cm9tIGludmFsaWQgY29udGV4dCBhdCAKa2VybmVsL2xvY2tpbmcvcnRtdXRleC5jOjk2OQpbwqDC
oCA1Ny44OTk2NzhdIGluX2F0b21pYygpOiAwLCBpcnFzX2Rpc2FibGVkKCk6IDEsIG5vbl9ibG9j
azogMCwgcGlkOiAKMjgxLCBuYW1lOiBrd29ya2VyLzM6MwpbwqDCoCA1Ny44OTk2NzldIDUgbG9j
a3MgaGVsZCBieSBrd29ya2VyLzM6My8yODE6ClvCoMKgIDU3Ljg5OTY4MV3CoCAjMDogZmZmZjg5
YzRjMDBjYTk3MCAKKCh3cV9jb21wbGV0aW9uKWV2ZW50cyl7Ky4rLn0tezA6MH0sIGF0OiBwcm9j
ZXNzX29uZV93b3JrKzB4MWNmLzB4NmQwClvCoMKgIDU3Ljg5OTY5MV3CoCAjMTogZmZmZmE0MzNj
MWY1M2U2MCAKKCh3b3JrX2NvbXBsZXRpb24pKCZlbmdpbmUtPnJldGlyZV93b3JrKSl7Ky4rLn0t
ezA6MH0sIGF0OiAKcHJvY2Vzc19vbmVfd29yaysweDFjZi8weDZkMApbwqDCoCA1Ny44OTk2OTZd
wqAgIzI6IGZmZmY4OWM0Y2NiMGEwYTggKGtlcm5lbF9jb250ZXh0KXsrLisufS17MDowfSwgYXQ6
IAplbmdpbmVfcmV0aXJlKzB4NjIvMHgxMTAgW2k5MTVdClvCoMKgIDU3Ljg5OTc5NV3CoCAjMzog
ZmZmZjg5YzRjZjY4MjMwMCAod2FrZXJlZi5tdXRleCMzKXsrLisufS17MDowfSwgYXQ6IApfX2lu
dGVsX3dha2VyZWZfcHV0X2xhc3QrMHgyMC8weDYwIFtpOTE1XQpbwqDCoCA1Ny44OTk4NjZdwqAg
IzQ6IGZmZmY4OWM0Y2NiMDgzOTggKCZiLT5pcnFfbG9jayl7Ky4rLn0tezA6MH0sIGF0OiAKaW50
ZWxfYnJlYWRjcnVtYnNfZGlzYXJtX2lycSsweDIwLzB4ZDAgW2k5MTVdClvCoMKgIDU3Ljg5OTkz
N10gaXJxIGV2ZW50IHN0YW1wOiAyMTI2ClvCoMKgIDU3Ljg5OTkzOF0gaGFyZGlycXMgbGFzdMKg
IGVuYWJsZWQgYXQgKDIxMjUpOiBbPGZmZmZmZmZmYmIxMzQ3Mzk+XSAKY2FuY2VsX2RlbGF5ZWRf
d29yaysweGE5LzB4YzAKW8KgwqAgNTcuODk5OTQyXSBoYXJkaXJxcyBsYXN0IGRpc2FibGVkIGF0
ICgyMTI2KTogWzxmZmZmZmZmZmMwNTA3ZmU2Pl0gCl9faW50ZWxfYnJlYWRjcnVtYnNfcGFyaysw
eDc2LzB4ODAgW2k5MTVdClvCoMKgIDU3LjkwMDAwOF0gc29mdGlycXMgbGFzdMKgIGVuYWJsZWQg
YXQgKDApOiBbPGZmZmZmZmZmYmIxMDk5Y2U+XSAKY29weV9wcm9jZXNzKzB4NjNlLzB4MTYzMApb
wqDCoCA1Ny45MDAwMTJdIHNvZnRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDApOiBbPDAwMDAwMDAw
MDAwMDAwMDA+XSAweDAKW8KgwqAgNTcuOTAwMDE1XSBDUFU6IDMgUElEOiAyODEgQ29tbToga3dv
cmtlci8zOjMgTm90IHRhaW50ZWQgCjUuMTAuMjctcnQzNC15b2N0by1wcmVlbXB0LXJ0ICMxClvC
oMKgIDU3LjkwMDAxN10gSGFyZHdhcmUgbmFtZTogSW50ZWwoUikgQ2xpZW50IFN5c3RlbXMgCk5V
QzdpNUROS0UvTlVDN2k1RE5CLCBCSU9TIEROS0JMaTV2Ljg2QS4wMDY0LjIwMTkuMDUyMy4xOTMz
IDA1LzIzLzIwMTkKW8KgwqAgNTcuOTAwMDE5XSBXb3JrcXVldWU6IGV2ZW50cyBlbmdpbmVfcmV0
aXJlIFtpOTE1XQpbwqDCoCA1Ny45MDAwOTFdIENhbGwgVHJhY2U6ClvCoMKgIDU3LjkwMDA5NF3C
oCBzaG93X3N0YWNrKzB4NTIvMHg1OApbwqDCoCA1Ny45MDAxMDBdwqAgZHVtcF9zdGFjaysweDdk
LzB4OWYKW8KgwqAgNTcuOTAwMTA4XcKgIF9fX21pZ2h0X3NsZWVwLmNvbGQrMHhlMy8weGY0ClvC
oMKgIDU3LjkwMDExOV3CoCBydF9zcGluX2xvY2srMHgzZi8weGMwClvCoMKgIDU3LjkwMDEyMl3C
oCA/IGludGVsX2JyZWFkY3J1bWJzX2Rpc2FybV9pcnErMHgyMC8weGQwIFtpOTE1XQpbwqDCoCA1
Ny45MDAxOTJdwqAgaW50ZWxfYnJlYWRjcnVtYnNfZGlzYXJtX2lycSsweDIwLzB4ZDAgW2k5MTVd
ClvCoMKgIDU3LjkwMDI2NF3CoCBzaWduYWxfaXJxX3dvcmsrMHgyNDEvMHg2NjAgW2k5MTVdClvC
oMKgIDU3LjkwMDMzNF3CoCA/IF9fdGhpc19jcHVfcHJlZW1wdF9jaGVjaysweDEzLzB4MjAKW8Kg
wqAgNTcuOTAwMzM5XcKgID8gbG9ja2RlcF9oYXJkaXJxc19vZmYrMHgxMDYvMHgxMjAKW8KgwqAg
NTcuOTAwMzUzXcKgIF9faW50ZWxfYnJlYWRjcnVtYnNfcGFyaysweDNmLzB4ODAgW2k5MTVdClvC
oMKgIDU3LjkwMDQyMF3CoCBfX2VuZ2luZV9wYXJrKzB4YmQvMHhlMCBbaTkxNV0KW8KgwqAgNTcu
OTAwNDkwXcKgIF9fX19pbnRlbF93YWtlcmVmX3B1dF9sYXN0KzB4MjIvMHg2MCBbaTkxNV0KW8Kg
wqAgNTcuOTAwNTU3XcKgIF9faW50ZWxfd2FrZXJlZl9wdXRfbGFzdCsweDUwLzB4NjAgW2k5MTVd
ClvCoMKgIDU3LjkwMDYyM13CoCBpbnRlbF9jb250ZXh0X2V4aXRfZW5naW5lKzB4NWYvMHg3MCBb
aTkxNV0KW8KgwqAgNTcuOTAwNjk0XcKgIGk5MTVfcmVxdWVzdF9yZXRpcmUrMHgxMzkvMHgyZDAg
W2k5MTVdClvCoMKgIDU3LjkwMDc4M13CoCBlbmdpbmVfcmV0aXJlKzB4YjAvMHgxMTAgW2k5MTVd
ClvCoMKgIDU3LjkwMDg2Ml3CoCBwcm9jZXNzX29uZV93b3JrKzB4MjZkLzB4NmQwClvCoMKgIDU3
LjkwMDg4Nl3CoCB3b3JrZXJfdGhyZWFkKzB4NTMvMHgzMzAKW8KgwqAgNTcuOTAwODk3XcKgIGt0
aHJlYWQrMHgxYjAvMHgxZDAKW8KgwqAgNTcuOTAwOTAxXcKgID8gcHJvY2Vzc19vbmVfd29yaysw
eDZkMC8weDZkMApbwqDCoCA1Ny45MDA5MDNdwqAgPyBfX2t0aHJlYWRfcGFya21lKzB4YzAvMHhj
MApbwqDCoCA1Ny45MDA5MTJdwqAgcmV0X2Zyb21fZm9yaysweDIyLzB4MzAKCgpGb2xsb3cgcGF0
Y2ggY2F1c2UgdGhpcyBidWcgd2FybmluZzoKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYz9oPXY1LjEyLXJjNyZpZD05ZDU2MTJjYTE2
NWE1OGFhY2MxNjA0NjU1MzJlNzk5OGI5YWFiMjcwCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
