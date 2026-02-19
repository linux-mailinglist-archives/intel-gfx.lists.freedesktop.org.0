Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2J+UFuWbl2lq2gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 00:25:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7783163872
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 00:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 345E010E342;
	Thu, 19 Feb 2026 23:25:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=oracle.com header.i=@oracle.com header.b="CdFHtwB2";
	dkim=pass (1024-bit key; unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="G4OApRB/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F098910E342;
 Thu, 19 Feb 2026 23:25:21 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61JLhJqg1517782; Thu, 19 Feb 2026 23:25:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=Gq2oLNWiCL1c93CDgJaaJ0lRfWk/7yL+9ZRzldyiZZA=; b=
 CdFHtwB2JJR8r1btHy/nFbFdYagdtIdQDlzWfJmcmRvsj0I52N0L0jdazZtUHS7e
 m80TUO0emWaf/oQZ8pB8dK3lsgyCG2XPSkVUdLNzMg8CXe99RzMiq2/pJMhgftf5
 QxjZNij+EeFZPmd/14lbbOyL7YyiXQuf4unTyk2dlBfP+/MtDONjDX5xLlGGFKVG
 k5kvW4cqlgo3vGWPY/++xC7//uhGFCPqqkWyf2Fo/IofQVTao3f4bOWk2r0J5WHj
 rxX0Tyl5PuorjQhvh2pJNh5WT83g4pg/PgrI9pGsdHZx+++mEigxWjxru2/2BfJE
 ZsDLzU2X+mLyDNAL34t9GA==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4caj4b0chu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Feb 2026 23:25:17 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 61JNBbdi022968; Thu, 19 Feb 2026 23:25:17 GMT
Received: from ch1pr05cu001.outbound.protection.outlook.com
 (mail-northcentralusazon11010056.outbound.protection.outlook.com
 [52.101.193.56])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4ccb2fkakr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Feb 2026 23:25:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gcbFwiBtxkYEOQfDy5HSIVIQMVlaN9zRjJ/6jKKjZqbAoJLeuTIaK0D7c0Sjm00ss45RN6aFrly8sDr0OSg4JKIYiwzTU1xptwC2f03tdhEMr+7lXgbQ9a/6TOcMQEgSAlKr1oXsLVqEVAhy4n5Tnb+0WnvoJk+5M3OL+KlBW1YaIbxWWt6ctKAA+FmDqSFC7jM0vAy3Dm5v7EXaqqnb7nyBhNCa3KKXf89tNh7SQzqpNsLj2V6hlTe5sGc2Rm3Pf694oBvrtLMCdRdXeY+gHOekpTNI4mldLAUYX40OChXSWxRUa8vmN3kyiG22yJH1mXtzBJ7Os30JelBXm2nApw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gq2oLNWiCL1c93CDgJaaJ0lRfWk/7yL+9ZRzldyiZZA=;
 b=QWvmdC3yqHDLP5uOP0fkK6dXrvlcMiMYswvStqkKEF/zKRi3V7FYL/B6uRtC2IGLvRzikjBa1etRkfAJIdhhq2fq7Jbd4b5G3LjimAiq+HCLnGLUUM7M3v2275sLGmqBiq9pQq0E9gEnEa6cgXli4Jg7BpSbc5nvxsx56iFO0A3ctLFD5Hw73PlVVf6vvIqOBhyN6bsIP72YZPFn96VunDI2Sp1pkEvX9JqWc4c5mrzQHkyPW7SsLH5Y/J7UIyIg+ewwjoIVjeRuIn6XFILQtZu5yJsodDAw3C8+0Oc4gBeFUfi2hkagrHNVF+pzJ95miJ0QZPEL3XQCgfKXTyrX6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gq2oLNWiCL1c93CDgJaaJ0lRfWk/7yL+9ZRzldyiZZA=;
 b=G4OApRB/KHbfvZ4I82iJkdiFG5sbDss4vrNYZEj4kMDEB8PGTbBmR5eMAtk3DD8SI09aAoYBePiaDlOXX8yZEbHUzUmAQPbgzasomginXy1g7lX/wItMviFTIMgJt5IlY2Y8Dxu0mMuCTv4VANiIdDKIxmK8zGy0oMZDSlwbTSw=
Received: from CY8PR10MB6707.namprd10.prod.outlook.com (2603:10b6:930:93::22)
 by CH3PR10MB6690.namprd10.prod.outlook.com (2603:10b6:610:143::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 23:25:10 +0000
Received: from CY8PR10MB6707.namprd10.prod.outlook.com
 ([fe80::401a:e126:b1a8:9b0e]) by CY8PR10MB6707.namprd10.prod.outlook.com
 ([fe80::401a:e126:b1a8:9b0e%5]) with mapi id 15.20.9632.015; Thu, 19 Feb 2026
 23:25:10 +0000
Message-ID: <71d5ab59-c625-47b3-8a18-29548b1d65af@oracle.com>
Date: Thu, 19 Feb 2026 15:25:07 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [External] : Re: [PATCH] drm/i915/gmbus: fix spurious timeout on
 512-byte burst reads
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com
References: <20260206203044.3892925-1-samasth.norway.ananda@oracle.com>
 <83ad67d411502b2e2ece666745b5209dae83e4f7@intel.com>
Content-Language: en-US
From: samasth.norway.ananda@oracle.com
In-Reply-To: <83ad67d411502b2e2ece666745b5209dae83e4f7@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8PR22CA0003.namprd22.prod.outlook.com
 (2603:10b6:510:2d1::6) To CY8PR10MB6707.namprd10.prod.outlook.com
 (2603:10b6:930:93::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB6707:EE_|CH3PR10MB6690:EE_
X-MS-Office365-Filtering-Correlation-Id: 5acd1539-2567-4e45-fbde-08de700e1ff7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OW84ckNvMWs0dnp1T0ZqZGE1eVZkUi9YTVhsdjAvcit6b2lyYWJFL3ZQK2g0?=
 =?utf-8?B?RlkvdGI3djB2YnlHYyt0MDR4czBVN1puUjg0Z1hsMUNIL25HcDJ6MzBKMFJX?=
 =?utf-8?B?UHZobEtKK1hHRW1Wc3lkS2I2QlZ2SHB5cGhiNHl6MnJMb1p1NTk4WTlSd3Zy?=
 =?utf-8?B?dE11d04rWXh1WWg5YU9rcGlqb2hYZFNsVmx2czFkQ3ZaSXdYQXBCajY5dThB?=
 =?utf-8?B?eTU0V3RpdTM2TndFM1I0Wk0xVmhRTXJDdmxpcFBOcndLdFRhS3duMm9uQ1RR?=
 =?utf-8?B?Y2VKUXZiMmRHUTVLdGQ4TmhURW1kbHR3STlGdWlRUnExaHhHK1NMVHgxMmVD?=
 =?utf-8?B?YURmdTlMWEJMQ0lnMFl6Q2tmNzNoVHNDNWpNREVkaUZQbExPUkZOekZpd3BP?=
 =?utf-8?B?Wk9aWExDbU1naDhOU053NTFCQ1VFVDBVNnM4d1loaStnUE9QWUptYVptbldU?=
 =?utf-8?B?Tnd1Y2JyNWNrN09yb0g1emdBOWhGeVVoQ1lPZ3M1M2d4b1ZvaGNaS1FsbkFn?=
 =?utf-8?B?bG1YNjR1QWI3U3Y4ZWV6TStDZDhIS1VQSG5Hb3FidUJ6dUtGRURVOTBucjVr?=
 =?utf-8?B?aS9heGdGb01RbmpUc0pDYjF4eVBZOUZ2NjNtUkhMU2IvNnEyUmdZSGVsV29s?=
 =?utf-8?B?YTBEeXZsN3VvdzVqMnZUUHRwaHpzTmxJaWYvTWRQRmt3NzhqM0ZLTGx0d0FQ?=
 =?utf-8?B?bk1BUVFvMnpzRk5GaUE1c2VaTHFJb3BiSEdZbG5WbGt1RUZweVJ3WnRFRENh?=
 =?utf-8?B?ckR0a2tWQnJnVzZWTnJGYlBXMmEzUFVrR2lyL0lIVHRqYUVqUHRMd1BDMkh5?=
 =?utf-8?B?OWtmVEIyZHgzVHdKdGZwYWFZbU9mUVJGUzd5OUhLb1hMRktjRStydjU5ck1h?=
 =?utf-8?B?d28ya3lCdUF1cWtqSlFEb2lIZGxHSFBzWFpCUjZPakJzT2htOGRvMUJuM1Zv?=
 =?utf-8?B?c2pFc1hjLzMyQ05UY244SlBSa0JOYVpUQXhMMmNMZWZQVjRCSll3UGFucFRX?=
 =?utf-8?B?SW11d2pIVGxXOHpZOGNRRlk2NUE1TVM3MjVYdk4vam1seHJzdHNEZXZjY0tD?=
 =?utf-8?B?b1Yvc21HMG9KbGMxZFFKR2dnbytBSUxXM0xNRWIyTU1vYkIxU1JwMXErcFdK?=
 =?utf-8?B?bVRkTW0veGQ2REFGcUc1WkFnaDB5Tk9XMTE1K2t1UFJpZVBpbFlKYWVhU1Fm?=
 =?utf-8?B?MjZIUkwvZ3ZJby8rbTNuejRoRjhQOEg5alhxOGthd3Irb1BLeklaNnI1WmhO?=
 =?utf-8?B?aEJWdmlFR1EybkdWWWUxRDdYVytLUXF5Vlk2ajU2WkV1NENqUXMvYW9OTS9t?=
 =?utf-8?B?OFhhd1ZaWm9vazVOZ2dNNEFwVjgvNFpGMDVlMDlKd0xBU3hWbG14aGoyTmRW?=
 =?utf-8?B?UnhjVG1Pbm1iZVM1V0EzUU5oYVlYUmNBMGNIQkgrV2xTMHdlK3dORDR1Vjdh?=
 =?utf-8?B?VjFuSkJkbFo0M3ZacXRLTkZPeGRuTzFFTHNTQXpiVE55SHI1ZjRZd0J3dUNn?=
 =?utf-8?B?NElzbWNZdUhhRjZUcldoUERBN1pNMlhSNUdrNE5vc2NaYU9rR1Z0TnRyR0Jx?=
 =?utf-8?B?RkZRQUhKTmJvbXk5Z2JrTWE4QjRGL21rSW9zdlZ4MHAvVWtkdDJYYkZxRXg1?=
 =?utf-8?B?clM4eHMxYU9BcWVkLzY0Sm0wQmRmeEY1TytLOElQWWg4WXlIU3hIcllhWkRa?=
 =?utf-8?B?M0xtSG1NeWZ3MUtXVmZ1UmN0VmJnV1JraXZhV1ZkM0I2cnRJdjFWVEpzeHBa?=
 =?utf-8?B?MUszTmlSSjFqdFg5K2Rtd2tFY3pqRndZV2JzNDlaNE13R2NPT0pVQThlNEJu?=
 =?utf-8?B?bHRHc29SMkYzY1lKd3dWdjM2NHI1QXc3cTFFdU5GODdmdXh2VkJ4V0hCaFZu?=
 =?utf-8?B?SjlUcTJuMEQybTZrQWptWmJpMk9YZ05va3VmYnBsZTgvR0NtT2FsSXRNbVcv?=
 =?utf-8?B?THFSMkYxTk9tMXppejVJemg3c280WDBzOUpRYm1FcjJqVXI2YkVVVE8waTZT?=
 =?utf-8?B?dG9iQ0J2RCtuOFVBWUh6UGw2cmhqYXBJb1FwNGpjOTNzQzNkUTVSZG5HQ3Y0?=
 =?utf-8?B?MXc1d3g1Q2xrY3VEVVlQUURIR2xmNnN1UWhLMG9zd3JlR0lXNkk1SjRyOEdJ?=
 =?utf-8?Q?RB0I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR10MB6707.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDE2UEpYVCtuU1crdE1oaU14T2xPdDdSQWVOVE4wNTIyQVlmNi80dTQrUXZI?=
 =?utf-8?B?NmVVZUV5Ykk2TDlDTVBtWWVRUXlJQ3llM2g4TmpmUW4rQjh1YXMzTHFNOUJX?=
 =?utf-8?B?MHQ4UUlNY3F1VktDT1B4QjNGTFovNS85U0wvZ3NYdmNCcE1PTU80N0w0Wkps?=
 =?utf-8?B?RzZ5bWk3Z1lldHFlR2VoczhTQnY5ME9uNXVmbGtwWmhYU3k4SzdGL2s4b1FW?=
 =?utf-8?B?QUJNeVFWaWp3elVXOEtwRjRwTFNYN0tTL2o1TWc5c3cyV2NxR0llcXNhSmZs?=
 =?utf-8?B?V2VabjBVelVBVnNmUXRRK1hPbFVzS1FtQ0ZIMmw3enZ3UURlZlVDdExnMnRC?=
 =?utf-8?B?OGZYN3lIMWU5cXFSWU9scElNbS9MVS9NdkJPZTBrbXNMYTI5cUFhVjFSam5F?=
 =?utf-8?B?M0l3Vk9GS1IxeDNyWU1rbVhCRkFacnpSNEpBSW5tYzNYMFJpMndrWGZlbE5O?=
 =?utf-8?B?ZmpmT29BZDZqUmQvbGZDYWk2NWptU1FpVEgrbXgrc2hFbzgwdm4rODNGVGR3?=
 =?utf-8?B?WXlQTVNaMzZVekQ5ZE44d0IzU05EbVFDNG5qdU9oUXhFeEg0cERzTzRXb2NW?=
 =?utf-8?B?dmYzck1OSFF1ZEFjOVM0UnpUYzRMS050UWozWFpEcTJBYUJrWkRDa0ZKVHMz?=
 =?utf-8?B?ZVB1aTVjM1YzczUwT05Cellzd1ZJRVBhb0xvRVhTdlhxZ0dzZGw1MjdWMlFK?=
 =?utf-8?B?VVp4VGoyRlkvM1lKenJtYXI5WHZ1TWRudlRMQTVRc3VyTlF3dm9qM0cwRWZN?=
 =?utf-8?B?cjI4Uk5yVzBPUVczeDFNdmsxSUlraFA3ODdoNU52ZHFaSU5TRVR0a2FVNXM5?=
 =?utf-8?B?eFNCNE9KUVhFc2UxcUU1ZmRFcjhGQUJKa05oak1abDlCOWNrRUc2NlBoSVFL?=
 =?utf-8?B?Mkh0ekswUXFiejVRS0dNRXFRMnhOSVhER1dtRUdMTmN6TUZmOWdOQUIwL0hS?=
 =?utf-8?B?SzJGYWxwRC9hQ2UvdS9xd2ZPM1dFMktkM0ZrUURDQUswazZ3VXBIVVZGcGFK?=
 =?utf-8?B?NE9rSmRnaEM5MGJBU0dzT01ndWhGSmkvLzUyZ2Q3RU5UZ0F2M3k1anRzV0tK?=
 =?utf-8?B?Si9UaXVUek5UcHRmbXRRem5qeUVFMWdVMW5tR2Nua0VRaXZQWkRId3NlaTNH?=
 =?utf-8?B?dmNSa0Y2Q0U0bjQwVFRSendyK2xBTWlPZlpCVHZwV294dkR0cU9rTG5yN0Vw?=
 =?utf-8?B?RHJzWmFEZ251dmZHS2pHSU4rTVFDaFVCQzUvRnY2cFhpcVJHRjZEOFl3NHZV?=
 =?utf-8?B?d0hIY0tIV2JtUVpPbHhkcHBYSkZua1pnOUdKM2Ryb3JVTlhNK1hCS2YxRFlx?=
 =?utf-8?B?aXBlMDZxQUhmOG5IUWNmOTEyZGU4eHd4WU5XWGxUdUpETHFSL2RUNWFnRFVj?=
 =?utf-8?B?aVhPOUpCTTFvVWRzaTFHd3N4dFlDWjV3cVFoVUxDNUJ4aGJ4Y1M5UXROYm14?=
 =?utf-8?B?dWxyZ3g3a3dXS2FENW03VFh6aldDbEJYdXRiN2lhVUZ3b3A0NThNcEFVaXZt?=
 =?utf-8?B?S2pSUkZ3blpHbHM4NDFBTlQ1MkFUNGh5Sk9MRFgzaUUwSHpheTdBVWprMzJp?=
 =?utf-8?B?WFlzY1hoOGZtMzlwUVZyTmI2MFoveFV2V2FWNm5oZmZyQkpwNm1yVG45d3Vp?=
 =?utf-8?B?NE1JVEZXTUxqRWxCM0FOQzIzOW9yYlVqSE93ZTFQRjNJOXV5OEZtUng2ZU5w?=
 =?utf-8?B?dWtWTTh3OXBMc0V6Qm82OWVkdVVCczRhWjJTaGdENEJyOVNITkRHcWRjZUpT?=
 =?utf-8?B?aTJjcUFXbmxOR0hGUmNYTWw5U1piTVpjdWIyam1kR04rd1ExM2pBN1k1bE5R?=
 =?utf-8?B?bGFaYUY0N2tZWnNrZDZ2eTlHZ3lxU0U2VkpXT1ZxcSszMGVqM3diTndqdWlG?=
 =?utf-8?B?aDVTdHd3Qmt0Nk5RdXJKVVFZSVIyMmpPcmNZQkE1YUYvaGZENlYwZGticFNa?=
 =?utf-8?B?SDM2U0tnbS9HVkZiSkprM1FiOENmYXJQdkZVWmlTWG5pNURtOFVLYi9jY1pt?=
 =?utf-8?B?R0dKSGluaWhpakdUNEs4QTc0YjgxZHl3bUk0RkZ4cHhiNXZkTVNVN25ndExp?=
 =?utf-8?B?VU1PZHVuV3V1UWFYRzNlZEwvdVpGdEQyclJBZlZJTS96VmQzYndPVzRhS1FW?=
 =?utf-8?B?NEh3dEhNdGZGRW5aVzdrN1RFbkV5ZjRVcGRsMDMxMlJ0ak12Rk1VRkUwNDgz?=
 =?utf-8?B?TnNoY0p0R1hWKytEOEpOSm9JeEliWUEydnhLcHJ0aWQvN2dXOVJNUUdZS1Y0?=
 =?utf-8?B?NVh6VHg4VUFDQ0xHSVkxb0pUaTBsYWVSKy94L2FURFBvUFFGakJyWUt0WDI5?=
 =?utf-8?B?Q2FCYllZNWI4cjJDRUt4Wkw0dTdZcXZqTFc4aDhvbjNkM0pONG11STQvUGNI?=
 =?utf-8?Q?5lpzExHuJhjYNP54FkO21M/Bk88lhWdLF/mMO?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: RonlyXDb3+Zx2JvI7AVFWmdEMSMYCU05ZFZK0iPO47IGV+METg43om/bcrLUfrEqwoyiykGaL9McEjbdpPRfQfuojKGzoaUs47NsjxZW5nW/nTsrpyTUEmL26QO9+YevaAznt14GXWCenB/39g2E6IkYQZAixnq037vzlVYaQyhzdCAjPSV6josBuXhaaopppdgynFqwOINyNNpY31pBK3SCj+R0MTYK4+XBqwyEpL1swnXnVYtZuzYMvNM49Gxwu5bvOYvzYjHSlqGZoVE+F0tMWoO7PERj3MpA6YeM2pwgVErpkfYEaQKx6PmszEW5VnPDFyofFUeg6vcICfN+3iAYeKM3QcqGAwcgCTdd2s3a4JXdhSBv3wTd14DXvbUtYxN/eyiEOUX1OSc6GGpSBDiKgFJczOA0w9JfS05yV2uetCA56TrcwUMXEXxKNtZ9FcKtvrjjPwPNqwyYdOMiQcXVMB49vVXY4RJ/fCqGi6BzFXWPVmyoltXQwIubukmVciq4PW4F25OEU6vw+fSKV5cBd39Dk5pgVrH768prkswgciVCPp26D+GwLT7JwxmC7glDWjVyhWMT6EwFQdAeT+oEiwkyhY2ymD4lUv7y/kU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5acd1539-2567-4e45-fbde-08de700e1ff7
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB6707.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 23:25:10.3925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SPpoHM4VCaK0FAPFAQWLy82MECLM1ekAc3cO9IfhHxubznClYDFHhqEwiaQbbEvd8Ow+w8PNaCS1uAzjMbILgwAYW27LH4+MIyFx69EgXR5DEDYfDo6AxgaCE9/LFbBs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6690
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_05,2026-02-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 adultscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2602130000
 definitions=main-2602190208
X-Proofpoint-ORIG-GUID: HB9c2hhCE7DcZl2w2DjbgB2ID8lQMboS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDIwOCBTYWx0ZWRfXzkUZVIGepGvT
 CoQ8OXB9Yq/7PGAA2pfI5U8nrgLYa7cHbywpVR/y3MFmkG+JuM6ACq+HsD68pF6lcqiKl0ZANbt
 6VpcIroh6dkb3DtsT4WoWEkFVImzZLRwG8xuoNudPgaDuS43mj6mkgJIX6+21YoAUS7OBUtceO/
 wtju46zYA5e1MwMsHo5EE+BjPKDmOKd+AVGDsWnP61MD9fxzKpYLD8cYNUQ4dDtQ+rKEcwvUVI7
 nhRS0ZT76i7LbuLF7ShqblKi7eOkCWxewGktq+I3Y/aueeibQB09xa0F+W6jzA4E6CF30icl4Cl
 11bXWHWvjE+HZgXGlLLQEtJKDdBSwMcTeBREiefTeus2JJ5Q5NGnwcsRppeYvHzCrF2eHCE9FIt
 urXd6O9TaeBusiPJCsIKCw2BKzKx9t0m4WJQgCPaxaRx/3ycwc4saaHnTvKq84xzScHD4ibQXux
 cQXKpu6kdZBB9O20jRWeStKeUwaFmV4NMNw7r4UU=
X-Authority-Analysis: v=2.4 cv=SI9PlevH c=1 sm=1 tr=0 ts=69979bdd b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=yPCof4ZbAAAA:8
 a=OhuiAvl_7h61u1OiabsA:9 a=QEXdDO2ut3YA:10 cc=ntf awl=host:12264
X-Proofpoint-GUID: HB9c2hhCE7DcZl2w2DjbgB2ID8lQMboS
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[oracle.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[oracle.com:s=corp-2025-04-25,oracle.onmicrosoft.com:s=selector2-oracle-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[oracle.com:+,oracle.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oracle.com:mid,oracle.com:dkim,oracle.com:email,oracle.onmicrosoft.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[samasth.norway.ananda@oracle.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C7783163872
X-Rspamd-Action: no action



On 2/10/26 1:23 AM, Jani Nikula wrote:
> On Fri, 06 Feb 2026, Samasth Norway Ananda <samasth.norway.ananda@oracle.com> wrote:
>> When reading exactly 512 bytes with burst read enabled, the
>> extra_byte_added path breaks out of the inner do-while without
>> decrementing len. The outer while(len) then re-enters and gmbus_wait()
>> times out since all data has been delivered. Decrement len before the
>> break so the outer loop terminates correctly.
> 
> Nice find, and the fix looks correct. How did you figure this out? Did
> you hit the issue?

I came across it while working on a different issue and was reading the 
code.

> 
> I wonder if the whole extra byte thing is a workaround for some old
> hardware that shouldn't be needed on modern hardware... Ville, thoughts?
> 
>> Also fix a typo in a nearby comment ("generata" -> "generate").
> 
> "Also" is a good hint that it should be a separate patch. ;)

Thanks. I will send out a v2 with separate patches :)

Samasth.

> 
> BR,
> Jani
> 
>> Fixes: d5dc0f43f268 ("drm/i915/gmbus: Enable burst read")
>> Signed-off-by: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_gmbus.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index 2caff677600c..5fb3fee34af4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -496,8 +496,10 @@ gmbus_xfer_read_chunk(struct intel_display *display,
>>   
>>   		val = intel_de_read_fw(display, GMBUS3(display));
>>   		do {
>> -			if (extra_byte_added && len == 1)
>> +			if (extra_byte_added && len == 1) {
>> +				len--;
>>   				break;
>> +			}
>>   
>>   			*buf++ = val & 0xff;
>>   			val >>= 8;
>> @@ -693,7 +695,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
>>   			goto clear_err;
>>   	}
>>   
>> -	/* Generate a STOP condition on the bus. Note that gmbus can't generata
>> +	/* Generate a STOP condition on the bus. Note that gmbus can't generate
>>   	 * a STOP on the very first cycle. To simplify the code we
>>   	 * unconditionally generate the STOP condition with an additional gmbus
>>   	 * cycle. */
> 

