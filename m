Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D97CA953F3
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 18:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E7310E47E;
	Mon, 21 Apr 2025 16:18:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=oracle.com header.i=@oracle.com header.b="f7JBm2W/";
	dkim=pass (1024-bit key; unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="Upr/hrzN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7028510E17D;
 Fri, 18 Apr 2025 08:09:14 +0000 (UTC)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53I7txCR010150;
 Fri, 18 Apr 2025 08:09:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 content-type:date:from:message-id:mime-version:subject:to; s=
 corp-2023-11-20; bh=CPTbPuw9TYF/cduqzyQ4TZ4bXn1q6v10Pk4iWhjvI5I=; b=
 f7JBm2W/l/F44p4Hvaa/AfNRsg3W2TsvvyKvSvRjsZaDRadhEQAF8ygZf09+jQqb
 bBUD6UXLUke1E91mZVLF1vCgpllteEj9GGdKyJAaOhxWWAEvlBL2RrKHsox/dd62
 j+n9kfujYZWm0i+mUaB2frk7/0+U6zOOUhcXo8GI7HKUjlqsgO0r373KBigc6TpK
 rv0jGIJeP7mbGRCIc7b+jTlzB7PGuJx2E4An8RnV5tWh6nP+sY+8qDRIuohOHlko
 Zm6HFKXDLMXRmqSpYwNPQ/IqFR7X4OB1WwuOIODjRUtH84BHdTnWc6WdZvOM8FFx
 L5/Yh9T0cNZIuOzesfB4Nw==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4619447qnh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Apr 2025 08:09:11 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 53I6daev031021; Fri, 18 Apr 2025 08:09:09 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2177.outbound.protection.outlook.com [104.47.58.177])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 460dbew1hf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Apr 2025 08:09:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jWu0iVtzRUF5x+hGx4REGCIF0Awkcc3ZK3RsijDQsqk/MBU71QPuOroVBfkQr9HP5HmT8bvwXMoPQmnsOS55oicqyS4RyrMtk9rB+Zhp9318yvQE8OV0A/cS7EGePtuQ+kbEdI83xPMqhmiGBPqnfDJ9foEqVRwEZvZykIXUM7bYSgDbJxGz7RiqRcITMCB+3rBOsSLvQL5sIB0ZW5AJi+CU9wm0jIS5edvOLSb4MqwG8B70hoMMCRBE2Q3tclLaI1XTO8Uwgc3lec67vfP52HEkzEO8UF7Okc+/eb+TTuzeqBTYXaDDPQIOBw7ypxRS3Aoc0s4z/6F+D6wXtm2oSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CPTbPuw9TYF/cduqzyQ4TZ4bXn1q6v10Pk4iWhjvI5I=;
 b=sk1mH4v7hyzqrU5CICyjs2H+Stm9yzylLUFrwL4UC/+t1hj7/JQutXMi6y8hvcOyrDmXpLOL85N0Vm/Wh1/0qZMGBgxUyShOfEonrgG40eWxHA5TfamhaJNRJxem6Lj5hE7DXtLD8wAjClcctAS7rEkzeacJAyFjX5CU3IKpYNDseTDrQ+ExD7tDXZgtqXGP3w8DB5dzU6A4260feAeV2r+CyNS+y53K2DxK0id/kr3AeXjbxfQjPwxRNleFTABr46Q14+vjIYAAzUsJqhaP4hbjscGmxwkw13AS9vxp/E4lMASyIRZP5/829MzNHS9YbiXxms7lQsKDnT494h6xWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CPTbPuw9TYF/cduqzyQ4TZ4bXn1q6v10Pk4iWhjvI5I=;
 b=Upr/hrzNRO2Jxb3W3euWwwh2hW/tOuv9viFPTtdOYTHOEzLvytQarr7lO0jUR+i7lz2INCD3Kfz3fA9wSP0B30Qa0d0g8kEhfe1mQA89nHK79AgVp2Pg7O26gvXBruqNWQTY7UxvuVttrwxNEK155StLby/1cquBQSwPpOtm0gU=
Received: from CH3PR10MB7329.namprd10.prod.outlook.com (2603:10b6:610:12c::16)
 by CH3PR10MB6715.namprd10.prod.outlook.com (2603:10b6:610:148::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.22; Fri, 18 Apr
 2025 08:09:08 +0000
Received: from CH3PR10MB7329.namprd10.prod.outlook.com
 ([fe80::f238:6143:104c:da23]) by CH3PR10MB7329.namprd10.prod.outlook.com
 ([fe80::f238:6143:104c:da23%7]) with mapi id 15.20.8655.022; Fri, 18 Apr 2025
 08:09:08 +0000
Date: Fri, 18 Apr 2025 17:09:01 +0900
From: Harry Yoo <harry.yoo@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: [BUG, BISECTED] HDMI not working with Intel Arc GPU
Message-ID: <aAIInWHmy17llRFG@harry>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-ClientProxiedBy: SL2PR03CA0014.apcprd03.prod.outlook.com
 (2603:1096:100:55::26) To CH3PR10MB7329.namprd10.prod.outlook.com
 (2603:10b6:610:12c::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB7329:EE_|CH3PR10MB6715:EE_
X-MS-Office365-Filtering-Correlation-Id: fcfc44ba-ce64-4c9e-e661-08dd7e504ae0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vJyGMhqBLUcdePXkTEr/JnKvdWPpl+FmrdqP/Wq3nGGWQ/O0OlJTBV6499bs?=
 =?us-ascii?Q?eVPD2ftSo0j7zpdeq7JurJelpDxxq1j0eRnaSi+K7oV055mq0Nv4DahhN2Lt?=
 =?us-ascii?Q?aTYhHXMvRtosBwncBb98iAeSnTw21lZ9wh0g/DQCpier7wEMC7o9NHI6hv0L?=
 =?us-ascii?Q?BmPRIgdFoyBLvOtH0gelZOh8ur3Ojb2//m7wDuFEeI+0O46HrvZumFsxqrjC?=
 =?us-ascii?Q?bn2kgJnDmt+hwnElSY3CWFLmZQLCxXjfRjAFRm5YqcYUOLkMXuBL448KiOzr?=
 =?us-ascii?Q?lRL9JS1IEYLaw2Mz0fTx0xneu4mcVvshx74iDFT8KrK/Sr1Wl1SevsipHQew?=
 =?us-ascii?Q?i4H82XP/VcGVEB2a2GUz4AL5R1quTGYwhuEYXfDb42couhIYmOMDg+890oit?=
 =?us-ascii?Q?Ef/sDRSsokr0IEqigwn4aKJEfKHOdgaieGsfeEsS6BuUBW5TmZpVG0Ay9lgk?=
 =?us-ascii?Q?8xc71IEmeIUbhRerO8ao1LMI+XkJrAeBmv3OFIwKp36ZVd536vZYLUXEsqoR?=
 =?us-ascii?Q?OGbDX93mOipn2hIiXZo+tpyy/tp8XJQuRQAnk9xjpNH/3Nw/WFYT9eYdngXH?=
 =?us-ascii?Q?U+Bub/Numd3oVKtdH2HnC0VMRYPF2zju72kEXQMCAJVL82Mdgb+gGeGCu2zR?=
 =?us-ascii?Q?F40KDBj14wKMhYSYrCrm47GeNlmzXfYUVuB4AKWUmSItrQN0jDUmVHAhnl+x?=
 =?us-ascii?Q?BL7423+qYJAaPPaxw//nGBT7hpk9ZDGTAc+0z0rLZUii1aM/4ERrgkcWrv99?=
 =?us-ascii?Q?0EQ4tWuVfjCkl+yS29QM2yIcx+KBC68ah2NSmWKaaXiR2No0QI2UkHtX+dj1?=
 =?us-ascii?Q?0D8Zh523D44AjLwN70dxVXuMbqO/j6hfvYeq5/z0EO1Zirqz3BJ6eJln9SLi?=
 =?us-ascii?Q?bA/Z+dnKb54SyPnddSxzfd4IM+5Vbke/k8h4tsKbK4oUgQXzgu0Gd8mJ9E1t?=
 =?us-ascii?Q?KmcKxefaF84shdOAIOlbp9BkqLVztCGMPmifyPaRgiSU2AH2tjqfIiVpvguH?=
 =?us-ascii?Q?Se1CQAs9mDL3x83bDmS5bbqJL32QVNyymhRzT3/WiTLauxElfCuQZDtqxeu9?=
 =?us-ascii?Q?4qu4wRzMrzC1EMLwxYtVAb/PXtufoL5zMmhr0x1ZmgGJ6l/i/6mC0pf9rgxC?=
 =?us-ascii?Q?yO0neUPeWU3W5LEitnX39j4ARA5fRVOtsBGPl/86jpyL2gz/LrwVztkCpOGi?=
 =?us-ascii?Q?o9iPXd8a4tfoq5hcDNy/IHGjhhm3dWE25jGVxf2IflmCwUoD8lz4bnAK/Woz?=
 =?us-ascii?Q?y5LONX93b9LstSb5NIfgg7cECDuwDF1Gn0NSd8OsZATbHiPyvzzyGDcV+/Qq?=
 =?us-ascii?Q?VcT9qhlRLFuUao4uAf9K7Lo8HYv6WTsM1ASeQ3+x5QQNgpdTKt75oNBb3Slr?=
 =?us-ascii?Q?mZNFM1A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR10MB7329.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cyGi0ckfh2whxo4/e2XAr+ppy74YwlciR7s5X5OlP5tWhrnthyGt3crhVtQd?=
 =?us-ascii?Q?ROTdVa+LJX2OkWf0EoNYREo713dGP0u4pgSuHD75OX/ydYVLVhffgeS4a8xH?=
 =?us-ascii?Q?iPKeJLxNULaUXoZ8EJn5w9RRLW7ywVKVFHczgrk/6Qv160+C99KV2eznRDiJ?=
 =?us-ascii?Q?o5m+p1nECOyLHTP/c3+3RLHoNwhp3ocYxgKUjzwbofNCrhCMr+TEl7Tp2WVd?=
 =?us-ascii?Q?rGux0ElWrB4R7WlLKs3fdKczeOqyUaBhlz/sj2jkAdFJ/giMQd5u/jQTSZsO?=
 =?us-ascii?Q?d3gtzrZ1UK9zFBGVkenovaXHwiV4hURm2d/BdkpXLUVkK6EzXZ+qoqprsZzE?=
 =?us-ascii?Q?pvK0I8TEMXMWxDJ+WsyBX3gw3+ojLP5eK2QAE/SFiTI5ZhlV8DShc/GShoc0?=
 =?us-ascii?Q?Q6oK93W9cAbK9JGP4+ClMUig1cEjFKZwkrEpEpd02LufvQwUB9ivdyirb1D+?=
 =?us-ascii?Q?H2cij/q2BDWqTy2W4Mhp+l02oE+efaA0gcd+/2HKISQEDLx+8hUC2uodszvn?=
 =?us-ascii?Q?Q31VHpJzpNrbUliVR2V1pFtjdRHTWws+tE3xQH+cdrJMa4Jp5IkmossXwegx?=
 =?us-ascii?Q?3t9dcF+MeBxgdlBPfzwVFChx4xKvgjdbXlAHr6+ftZKcTFDDP/k1CtqVc2pg?=
 =?us-ascii?Q?WivbZncosz+HNBWlC5EAQ2BiNsM0oB0J99jLn/HlTu22c1uwEgaAjM50vXat?=
 =?us-ascii?Q?VyLesy8dlEHLgN186XX/TjSHG9K4uRGMnO2LAOmjKNUvKB+PweGhZ0w1uCGL?=
 =?us-ascii?Q?nZucUfV6vsMbtxHeIB/5TUGdKa9bBAdoE9IZd3dhQESn4hfzzCiTE2jIXoLU?=
 =?us-ascii?Q?M4IS8HM0nSls4jnpk1Ca4D2YYXvE92itOBzDiToIH6iyHtl2xn8alj6+FbjJ?=
 =?us-ascii?Q?uDoaP6ne8WQRUQuz6WRZuuOWS6c0RlVaPGoRcj4eNarTWxDiuXD3Pm0/Vj7f?=
 =?us-ascii?Q?1YqNCXToORR/1zDCvkJALWvvSeiv5AfQGQbl04duaW1cXRhpdVreFs3KNNxq?=
 =?us-ascii?Q?qKgR3uLLSZT5GtZpPlVussYTLq7EBDcyBcjRYPah3UoOkPXiAXFsoh5dzRu2?=
 =?us-ascii?Q?7ss9IUBdq1YxmPRew9CfhQ4t4q2ZCAWbwhdqwL99OGSqWTMMcRLSk7jfkAET?=
 =?us-ascii?Q?YMtEuxnBDOHgauDlfrcesnUZb5PRYZ+C9Ko3arP7UkUyte7/knqp3mPqKCc9?=
 =?us-ascii?Q?SxBkxaO++nasY0iEwNwqdaShq0aEreE7R9VyBANRpHIz086V6ztFcJ6hLDYa?=
 =?us-ascii?Q?sS5NaeBMxP69XnTqDSr74a0ZO+8busjCsrQLm79m8fNDt+lv5KncS4qZHbJt?=
 =?us-ascii?Q?PGY7h3DU8LIxFsYgtcaLVMLPV8pgJVS4C5Dxr9q/msW7NIlBZUQTOhA+2sCO?=
 =?us-ascii?Q?eH4K5gjTH/vpJWXOSScqKySlLq1cnGnACy08oDM0NZTsuuqdu+BGqSFb61dQ?=
 =?us-ascii?Q?73FhehnUXm+nat0o54CItax543HUrI4zwDqX9JuW6wtBzl9uDhG80sGRAoSK?=
 =?us-ascii?Q?GGCt1VqX5JhCIV2ZdgZx928TaFpO0QmC91bhhikZdMOK7sEJkUauIXjKxTmg?=
 =?us-ascii?Q?pAhzBSKey4fg9fT0Hg75JONR9XjK1TJHECCf2yY2?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 4vgEhKYpMjYH0zHlyGiDpBCLC5K8mCXmx/z/n2uCSRGHANA3LD6N+TxR2psQd0D9gclgsveV8i/1B/rkzY/HwnEUGiPCqQKnmQTYK3BwCg4vnn8jybmWYlHh8SRigd104jt45oaNFZ5M/F97VpW1mGzDCvQEvMTjR9R+JJGz4DSSxYipyUfaI+h1jBCCC1yFSzaWw3iCKsqRc5h60S2/f7Bm+g+5K6kTcyMLGiLUU+7qAXiHUWYJWEvjRdmb1qXFh5tgmhiSz2+P+cFeJ0k2Oc4Cqboj88hgWgqJG2lIvV7vDR/30RVth33u49G2ysddO56gv3buo/EqQsSAx5LX0ikTbo2oGywbM0CPgYwJ0qIPtl3no6bvT+vI4ak9kU7eSR613jpYTzZiCbt8HdBoDTeurhVNbpznaZa/JW/CubGwTzZO12pPI7JCZmVPGsv9lrI1CmoTef5FwBmmV6xhme/dzkwgoiJpw6YMjkUBb9johuMKF1gYaf2xLC6gy3/1KQdSWpb6pQoWv+Bq1VliR8rZsr/TOwzMNxRoFR25Py+ffwe9fvgsNlEUu8b2SuV8TXrjWgZEFvh/RPX2ae3X24kMUqwhIQy7cm8vto5wHL0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcfc44ba-ce64-4c9e-e661-08dd7e504ae0
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB7329.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2025 08:09:07.9253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ThGvLFSeB1WTlZm5IJaKcnxEFMKKIctnr3zh1e41WyA/h7SDKNbbpw8vnfCbOEtCW2C2RCrX6ome7rk/R/gjKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6715
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_02,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504180059
X-Proofpoint-GUID: _XBcI4UTlatWe_H-XmM_n4xQw0upz2Sg
X-Proofpoint-ORIG-GUID: _XBcI4UTlatWe_H-XmM_n4xQw0upz2Sg
X-Mailman-Approved-At: Mon, 21 Apr 2025 16:18:00 +0000
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

Hi folks, I use my laptop with a second monitor connected via HDMI.
After kernel upgrade, my second monitor became blank (black screen) and
displays nothing. So I started bisection.

Here's my GPU info, the first bad commit, and the git bisect log.
I'm really looking forward to seeing this fixed :-)
I really enjoy working with a second monitor.

$ sudo lshw -C display
  *-display                 
       description: VGA compatible controller
       product: Meteor Lake-P [Intel Arc Graphics]
       vendor: Intel Corporation
       physical id: 2
       bus info: pci@0000:00:02.0
       logical name: /dev/fb0
       version: 08
       width: 64 bits
       clock: 33MHz
       capabilities: pciexpress msi pm vga_controller bus_master cap_list rom fb
       configuration: depth=32 driver=i915 latency=0 mode=1920x1200 resolution=1920,1200 visual=truecolor xres=1920 yres=1200
       resources: iomemory:500-4ff iomemory:400-3ff irq:234 memory:5018000000-5018ffffff memory:4000000000-400fffffff memory:c0000-dffff memory:501a000000-5020ffffff

1efd5384277eb71fce20922579061cd3acdb07cf is the first bad commit
commit 1efd5384277eb71fce20922579061cd3acdb07cf
Author: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date:   Mon Jan 20 09:51:21 2025 +0530

    drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
    
    Try HDMI PLL alogorithm for C10 PHY, if there are no pre-computed tables.
    Also get rid of the helpers to get rate for HDMI for C10/20 PHY, as we no
    longer depend only on pre-computed tables.
    
    Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
    Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
    Acked-by: Jani Nikula <jani.nikula@intel.com>
    Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
    Link: https://patchwork.freedesktop.org/patch/msgid/20250120042122.1029481-6-ankit.k.nautiyal@intel.com

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 49 +++++++---------------------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 10 ------
 3 files changed, 11 insertions(+), 49 deletions(-)

$ git bisect log
git bisect start
# status: waiting for both good and bad commits
# bad: [0af2f6be1b4281385b618cb86ad946eded089ac8] Linux 6.15-rc1
git bisect bad 0af2f6be1b4281385b618cb86ad946eded089ac8
# status: waiting for good commit(s), bad commit known
# good: [38fec10eb60d687e30c8c6b5420d86e8149f7557] Linux 6.14
git bisect good 38fec10eb60d687e30c8c6b5420d86e8149f7557
# good: [fd71def6d9abc5ae362fb9995d46049b7b0ed391] Merge tag 'for-6.15-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
git bisect good fd71def6d9abc5ae362fb9995d46049b7b0ed391
# bad: [93d52288679e29aaa44a6f12d5a02e8a90e742c5] Merge tag 'backlight-next-6.15' of git://git.kernel.org/pub/scm/linux/kernel/git/lee/backlight
git bisect bad 93d52288679e29aaa44a6f12d5a02e8a90e742c5
# bad: [93d52288679e29aaa44a6f12d5a02e8a90e742c5] Merge tag 'backlight-next-6.15' of git://git.kernel.org/pub/scm/linux/kernel/git/lee/backlight
git bisect bad 93d52288679e29aaa44a6f12d5a02e8a90e742c5
# bad: [0f04462874e1228cf58e19a3d1710db9757dd695] Merge tag 'drm-misc-next-fixes-2025-03-13' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next
git bisect bad 0f04462874e1228cf58e19a3d1710db9757dd695
# bad: [0f04462874e1228cf58e19a3d1710db9757dd695] Merge tag 'drm-misc-next-fixes-2025-03-13' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next
git bisect bad 0f04462874e1228cf58e19a3d1710db9757dd695
# good: [80e54e84911a923c40d7bee33a34c1b4be148d7a] Linux 6.14-rc6
git bisect good 80e54e84911a923c40d7bee33a34c1b4be148d7a
# good: [80e54e84911a923c40d7bee33a34c1b4be148d7a] Linux 6.14-rc6
git bisect good 80e54e84911a923c40d7bee33a34c1b4be148d7a
# bad: [16893dd23f6d1e3a4dd6da272ef9960825da3ebd] Merge tag 'drm-intel-next-2025-02-24' of https://gitlab.freedesktop.org/drm/i915/kernel into drm-next
git bisect bad 16893dd23f6d1e3a4dd6da272ef9960825da3ebd
# good: [fb51bf02551958265b7116f6ba92752295c83c26] Merge tag 'v6.14-rc4' into drm-next
git bisect good fb51bf02551958265b7116f6ba92752295c83c26
# bad: [778be378be2a0e0528dd1ea44ed3dc9804950fc3] drm/i915: Move icl+ nv12 plane register mangling into skl_universal_plane.c
git bisect bad 778be378be2a0e0528dd1ea44ed3dc9804950fc3
# bad: [99f4cb4fb222b42703b43551d55c9ec2520d9d5b] drm/i915/dp: Pass .4 BPP values to {icl,xelpd}_dsc_compute_link_config()
git bisect bad 99f4cb4fb222b42703b43551d55c9ec2520d9d5b
# good: [68f3a505b367656a2db05406a62dc43fb0c50034] drm/i915/psr: Enable Panel Replay on sink always when it's supported
git bisect good 68f3a505b367656a2db05406a62dc43fb0c50034
# bad: [381ab12d483ea30af4ca52db51d23c947f2904c1] drm/i915: fix typos in drm/i915 files
git bisect bad 381ab12d483ea30af4ca52db51d23c947f2904c1
# good: [d49b485d1be3cb1b3b719cf4031f879dbc26c633] drm/i915/dp_mst: Use intel_connector vs. drm_connector pointer in intel_dp_mst.c
git bisect good d49b485d1be3cb1b3b719cf4031f879dbc26c633
# bad: [1efd5384277eb71fce20922579061cd3acdb07cf] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
git bisect bad 1efd5384277eb71fce20922579061cd3acdb07cf
# good: [5947642004bfd56436ce63d3e65d517b5be52549] drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
git bisect good 5947642004bfd56436ce63d3e65d517b5be52549
# good: [18176f56942a596c5d03ed69ef30ad72f67a7edc] drm/i915/cx0_phy_regs: Add C10 registers bits
git bisect good 18176f56942a596c5d03ed69ef30ad72f67a7edc
# good: [82ecaae2360776dcd0b9abf9ae6b947c28025931] drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs with algorithm
git bisect good 82ecaae2360776dcd0b9abf9ae6b947c28025931
# first bad commit: [1efd5384277eb71fce20922579061cd3acdb07cf] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY

-- 
Cheers,
Harry / Hyeonggon
