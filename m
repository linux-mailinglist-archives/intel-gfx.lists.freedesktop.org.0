Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIFhCWIBzmkwkQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:40:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F183840EF
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E1110E2D6;
	Thu,  2 Apr 2026 05:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="M1vzDdTp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11013009.outbound.protection.outlook.com
 [40.93.196.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4641110E2D6;
 Thu,  2 Apr 2026 05:40:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OT3nljPZaD/aG18K6Igb01ttvagEkhxymKJWbMhGRx7iNLwU7NYEwLrGyGaOdMUKPon+clQQIWcziPCku2DRQcatUWz88R+uUX6pwSKI3Yj1hWI8UuzxC1AdqK3ZN5+AAYYmDd6gZMM+fRa1pbBv6MMrEn3ckOUux3s2yeb+YAUjvDtDpNSrV7WScCk+mavQySg52VeGQvAQ3nuYo8m7H4qhuy8oD5YjIX5xN5l0icxf3o4addqSyLgo093BIcGRyL/3z4fuITODnp5s7qnNfmImOBq54QvyDisQRtNfwU0/uxlAR80N3ef+El75xpWb1x7+9rRXwwjfJRxuuHP9kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v1klZbulZf1nG/GNgt5QrlvVnvGW8gLuA9dX4ZnWOQM=;
 b=LwZ6uLA/R9oYRnzGPOtPbzGmKpyrGSsVMhMVcIbjRh5M/JwkTUu1rJWEkK3zFeetpgb4H+P5VxPAsf5R970TP0Bh2v171OlpdxPolKd1W/DD4KY9+rf3zlb9klImY5YQtviKKfUTNYJO7/4jssSsuB90nXi7KtmEYsT12IsjZC8cnLz690OuwbhP8X/CYf1MOt7vQYlPiLaJQEF7gGyhmZMUQnxHudPlRW3hi3cXR6j4t0gSlw7+rzluq0oDJu4KboE3yd7ghsoZHX5dvsH+ZwWWYrjrzovOVpJPGPaFZE9iG7ryMVhM+7/MPGsQitCf58mcdjGJKHYiNn4LVZs3qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v1klZbulZf1nG/GNgt5QrlvVnvGW8gLuA9dX4ZnWOQM=;
 b=M1vzDdTpCDrMV/OtCkXHn1a/g1eXTaxLIAIkGhkHBQGxInE9f0EuJPOHlg3miHEziJgBwPC9iY68kZsxMs/ElkpycJcuFlzClAoUIrn/rzaGbZunmaHzQzrjNAz4TK0HoTqfthLGYwnCGQTAC/QDxbdntKJLxyacJ87CPSBqoVXMBj6ZmoSP/dsUw2qv6oSGJQIHVuu6JX62w91l1hvXmK4wimc4oEa+Pj83MxNklo499vBp+Ac10hh0x99SaGYG/NFy3K+CP2Y1+VewTqHRfDhmxg0IaYG0GxIlI8LpmOjY4bQtq23DTQfaXxSjubJYd7q9usFI+SwZIOoFp5xOgw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by DM4PR12MB6302.namprd12.prod.outlook.com (2603:10b6:8:a4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 2 Apr
 2026 05:40:38 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.017; Thu, 2 Apr 2026
 05:40:38 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 14:40:34 +0900
Message-Id: <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
Cc: "Miguel Ojeda" <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>,
 "Gary Guo" <gary@garyguo.net>, "Bjorn Roy Baron"
 <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl" <aliceryhl@google.com>,
 "Trevor Gross" <tmgross@umich.edu>, "Danilo Krummrich" <dakr@kernel.org>,
 "Dave Airlie" <airlied@redhat.com>, "Daniel Almeida"
 <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, "Nikola Djukic" <ndjukic@nvidia.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan
 Corbet" <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 "Christian Koenig" <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 "Thomas Hellstrom" <thomas.hellstrom@linux.intel.com>, "Helge Deller"
 <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Boqun Feng"
 <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>, "Alistair
 Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer"
 <epeer@nvidia.com>, "Alexandre Courbot" <acourbot@nvidia.com>, "Andrea
 Righi" <arighi@nvidia.com>, "Andy Ritger" <aritger@nvidia.com>, "Zhi Wang"
 <zhiw@nvidia.com>, "Balbir Singh" <balbirs@nvidia.com>, "Philipp Stanner"
 <phasta@kernel.org>, "Elle Rhumsaa" <elle@weathered-steel.dev>,
 <alexeyi@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>,
 <joel@joelfernandes.org>, <linux-doc@vger.kernel.org>,
 <amd-gfx@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-13-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYCP286CA0117.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:29c::15) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|DM4PR12MB6302:EE_
X-MS-Office365-Filtering-Correlation-Id: 62bfd169-5e9c-42e9-6907-08de907a5e8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: n9zox40aydL+B2MocBNCAtzQQRt1iTd7N3MtueVyRBf4CtSkd/6Gt89buXHbbH0peAm7OiqXHhH4KCoKUeZeMdASOEC3gwXECMx0wjeBIHgIquOOgMaMzOiVY5dZ22qb60gIhx3SLe2qcBUDPGkvxObPmyqf4oDhggvRxRU+nPOemCSnkBoMEKQgaQ+unT1KC8vMP4dxWdqo0D4ydLLzraGyjZCopX5A//ew0TYcizRH3lA0xQHmF5s2H4GgSl9ttd53yoCdTaDhZ8hEp75rz20PoS+1+kKrESxC+fTR5rGqsI+yMB+I+4XJo+xFv5Uo/BcO9Gu4okuuYIF6aPjgoxA6mroZbVFsVlPzPz+yczIHkG463Mw0YvabG9UQ4L/GTIQuRdFQaiQtKEcvsSOX1JgZhafAaXUyxfF55Bo0M5S9jMRmjNx0g46szulB5z6LnRb2VOjg0q34EFWj5tn8bMn+/kRCa3BWe73RsrDVNEZUp51eQlWo3rYczo+werWspfprEfQ7cfX0WdQQfcHP+lF7t+IXb71K8rtk6uuQ1uNehWGSfZEDtgnnfr/H+fVGOUMJ7XLyFIqycnoP75otXHFG7hfh7UHMcQVeLIu10dL8CzeYW0aJU01YPfMNd5vztkflGcidfjfgkcVDsVU9vIojn5vO9b2UkMp+YW6Nx6yBpVRX5HvhOm9afNfV1xCArrtcL3/cojIFpISX5z4At4fUrZ101XTbFLyfsO4t9zQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE8wd0FLYWRuMUtTcEMxbVg5aERkMUJXdzhqQ0s1Rng2RzVxVFdRamxSMTdn?=
 =?utf-8?B?NDRoNjhVTm9GMnNYbE1rZ1lMTE5HK1R0SkVwVC9kTGNIM0pTTUZTeXRTZm9n?=
 =?utf-8?B?RUp6dWxTTjl6cGFldkZuUWYza2dhekc5NFdTWWk3UE1JeTlITlBZOUNGdVJ1?=
 =?utf-8?B?T2VEYWw0QjFNSXl3N3NXYnB4ZTFJcWJWeVJzbTh0TWw0aE9Mb2xLR211c2h2?=
 =?utf-8?B?Mzh4ZUh2WnhZNlFVaUlQM3F2aTk1aSsyR3pUVUx3dDVFMWFjYll6dmVMeWhJ?=
 =?utf-8?B?Nk9xcWRKZFY4NjJWRG15VEdTaVIxVnVPQVQ0eGpFa0h1TmxmNEcvWVdQTGhx?=
 =?utf-8?B?bWtyZWVqQWk5SklyRzR0QXdLejY1QXh3eUtqTnpYK2tIZk1vQ2xhRHg0TTNo?=
 =?utf-8?B?ck8zdmlIRTRSY00rYlFyOTc5VVBhcGdGL0dybFliSEU5a2oyV0N3ZGFWZW9T?=
 =?utf-8?B?dXViZ1J2LzlybkozZ041MHZWVHdaUFNTa0JhaTlLZHJSVUgvYTA0VDMyVEY2?=
 =?utf-8?B?UjU2YzloRVFGaGNDaVQ0d1V2SGVkdmYwdzF5bDJuSEIrYXJYYXZvVjFEV0d5?=
 =?utf-8?B?VWxlZ0gxRUZTcHZleHhiSDUwalV2V3dBN083UzJab1p3UE5Db2V6SWt1RFBL?=
 =?utf-8?B?UytObURRc0pUZnNRakVSUGtnS1VONVZrcmQwM2JOTmtidi9FQ1JudUFRdHFo?=
 =?utf-8?B?T2ZuQktxWFJ5b0NhT04yK3VCSE9OelQ3M0owSUI3SmZEV0JNa0VoSWhsRXl0?=
 =?utf-8?B?amZmS0Z6VS9wSDRUMms1KzVGSTFVMG9YeTU5a25GL1YxNlVoRk52Yk16S2E4?=
 =?utf-8?B?bldRU3JObDEydFY4L2FCWWNhRGdvZzBnUlRza09DNllUc3NYaDg2c2lmc2FJ?=
 =?utf-8?B?RkswZTBzZVFra2NPUnJub1ZnSHlieUJrNUtnN29Ea1BTRmlMQmhQQmd3bnl1?=
 =?utf-8?B?cmt1d1hYdjJ5KzBIU045Yzl2S3NtUlhBSXY0K0tGczErbXNHSnczWW1sbFV1?=
 =?utf-8?B?QzNYalh5Mk1iQ2YvU0xmTmtFUktUYUpkT1VjU2M5UTl0dFltcDh1ZzVuS3RG?=
 =?utf-8?B?Z21rNFJlaUdmdExtTHB5T3ZxOXBQY2EycUhtTXdoNi9XaE1mOXVORnRvUml2?=
 =?utf-8?B?T0ppOWJyc1VIY0hPRTZVelRqaGdBb1VQSXhDa25UT3hEa2ZqVjFxYXUxcHNn?=
 =?utf-8?B?L3dnZXBaTFdmdmsycDMrVVNlaWlIT09SaUdNK1lTVFFQaVEwWkJsTnRYc3VO?=
 =?utf-8?B?ZGNZMjVxYmZKeUtqb1Y4aG1CM2VzWTN3dkRpY3RraFBxbjFoNGxzWVV5cThL?=
 =?utf-8?B?VHJmSGpVbFhLdVdtc3plNjE2SkNFOFdFb2xTcTVYRUJzaDZ6azBFNDREU0dC?=
 =?utf-8?B?V1dxdkhSSjBVODEvMEVLbDF0SyswR29mUkFUVE1mYTl5M0RHdDVZVUhXVlNJ?=
 =?utf-8?B?WGhmZVlQNjhhWWIvVmsyRC9yV3E4RzV5ZGcwVFozNHZ4TmRya3A3MzBObGtq?=
 =?utf-8?B?OE1sWllnYnpCcmFLUlQyQXRmS2prSWh3bmp2N1FxanFaazdLSTNFcy92WFRL?=
 =?utf-8?B?NS80eEpRM0pzdDgzU3BJMUpieVE3ZDh6cWxpZFM4Y2N2Q1NmeUNBdDAvRE9p?=
 =?utf-8?B?QTlXbzVRVmV5dzQwSnIreHhEdElPTUkrRC9RNEpVQU90a3gwRjh4czRFYUU3?=
 =?utf-8?B?azFENDNrSGdsUnJNN3FrMFdZUmU0UjMzMm4xZ0pVR0dDZmE4azZ5eStaV09y?=
 =?utf-8?B?VFNIMkRGSDVmYXdzM2FZQzUvQ05KakM1UUxQTVJNTU4yWFBMOHI2VDJZU1M3?=
 =?utf-8?B?bkszczArVFlCeng0bUdYenIvaWl6YUk0c2tveEZWcTl3K2N3aDNXRzdVZ2U2?=
 =?utf-8?B?Z0p2ZlVuSXhINTJIQndjOXpWeG56THA2Q2JzREVsVG1RVnlKUmhtK25pNnNR?=
 =?utf-8?B?alhMNWlsVWFCMlo3emdwSHBJMmkrYzNpS3psaWhxRytRSnVucGpKRnZXRHhW?=
 =?utf-8?B?NE5nQldLOUlsenJudzhBWjJTakJVNW5mVzQyUFNXN2R1NmdTU2JHNGlyZzVO?=
 =?utf-8?B?UC8wYk1oQTJnendnZXh4bWg1aFM5eWhnTXhndVAxNnBHNXJpeEp3QXN2Z3FI?=
 =?utf-8?B?YW9LcVNoaUY5ek8xaGM2cFpHVVljcUM4dTUxYzMzekR4VEZyQjRoNVE4dURH?=
 =?utf-8?B?bnFWMHc0N3NlMUk1em80eXcrb2oya2tBL1NWUkVXNkZyTDR4UXAwOGFQb1pz?=
 =?utf-8?B?d3lJUUFYYXNWSmNVeXFubStNeHZUb3FaRVQyL1dsNCttZjkyL2RCMHU2cFhy?=
 =?utf-8?B?d2xramJqZGJWams3ay83NERwcHNRZGtRNGxMcVVrb2JRUFVvbkxZL1A5ZkZE?=
 =?utf-8?Q?eLrgIwa2j4vMSLnVZBTy1M1DfMWlRnll/jJAMUGn8MCsw?=
X-MS-Exchange-AntiSpam-MessageData-1: Rr5vvTae15N+/Q==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62bfd169-5e9c-42e9-6907-08de907a5e8e
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 05:40:38.1679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QMwW/mm2IDMssR6QKa6jNT1lDbXrh6nppJBbqdQLLj0CT6gJyRiqA1mcu198K8Tf+l+7qAJlBPBrHUK6hD0v9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6302
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[ecourtney@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: 82F183840EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> Add unified Pte, Pde, and DualPde wrapper enums that abstract over
> MMU v2 and v3 page table entry formats. These enums allow the page
> table walker and VMM to work with both MMU versions.
>
> Each unified type:
> - Takes MmuVersion parameter in constructors
> - Wraps both ver2 and ver3 variants
> - Delegates method calls to the appropriate variant
>
> This enables version-agnostic page table operations while keeping
> version-specific implementation details encapsulated in the ver2
> and ver3 modules.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/mm/pagetable.rs | 330 ++++++++++++++++++++++++++
>  1 file changed, 330 insertions(+)
>
> diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-cor=
e/mm/pagetable.rs
> index 6e01a1af5222..909df37c3ee8 100644
> --- a/drivers/gpu/nova-core/mm/pagetable.rs
> +++ b/drivers/gpu/nova-core/mm/pagetable.rs
> @@ -12,6 +12,13 @@
>  pub(crate) mod ver3;
> =20
>  use crate::gpu::Architecture;
> +use crate::mm::{
> +    pramin,
> +    Pfn,
> +    VirtualAddress,
> +    VramAddress, //
> +};
> +use kernel::prelude::*;
> =20
>  /// Extracts the page table index at a given level from a virtual addres=
s.
>  pub(crate) trait VaLevelIndex {
> @@ -84,6 +91,96 @@ pub(crate) const fn as_index(&self) -> u64 {
>      }
>  }
> =20
> +impl MmuVersion {
> +    /// Get the `PDE` levels (excluding PTE level) for page table walkin=
g.
> +    pub(crate) fn pde_levels(&self) -> &'static [PageTableLevel] {
> +        match self {
> +            Self::V2 =3D> ver2::PDE_LEVELS,
> +            Self::V3 =3D> ver3::PDE_LEVELS,
> +        }
> +    }
> +
> +    /// Get the PTE level for this MMU version.
> +    pub(crate) fn pte_level(&self) -> PageTableLevel {
> +        match self {
> +            Self::V2 =3D> ver2::PTE_LEVEL,
> +            Self::V3 =3D> ver3::PTE_LEVEL,
> +        }
> +    }
> +
> +    /// Get the dual PDE level (128-bit entries) for this MMU version.
> +    pub(crate) fn dual_pde_level(&self) -> PageTableLevel {
> +        match self {
> +            Self::V2 =3D> ver2::DUAL_PDE_LEVEL,
> +            Self::V3 =3D> ver3::DUAL_PDE_LEVEL,
> +        }
> +    }
> +
> +    /// Get the number of PDE levels for this MMU version.
> +    pub(crate) fn pde_level_count(&self) -> usize {
> +        self.pde_levels().len()
> +    }
> +
> +    /// Get the entry size in bytes for a given level.
> +    pub(crate) fn entry_size(&self, level: PageTableLevel) -> usize {
> +        if level =3D=3D self.dual_pde_level() {
> +            16 // 128-bit dual PDE
> +        } else {
> +            8 // 64-bit PDE/PTE
> +        }
> +    }
> +
> +    /// Get the number of entries per page table page for a given level.
> +    pub(crate) fn entries_per_page(&self, level: PageTableLevel) -> usiz=
e {
> +        match self {
> +            Self::V2 =3D> match level {
> +                // TODO: Calculate these values from the bitfield dynami=
cally
> +                // instead of hardcoding them.
> +                PageTableLevel::Pdb =3D> 4, // PD3 root: bits [48:47] =
=3D 2 bits
> +                PageTableLevel::L3 =3D> 256, // PD0 dual: bits [28:21] =
=3D 8 bits
> +                _ =3D> 512,                 // PD2, PD1, PT: 9 bits each
> +            },
> +            Self::V3 =3D> match level {
> +                PageTableLevel::Pdb =3D> 2,  // PDE4 root: bit [56] =3D =
1 bit, 2 entries
> +                PageTableLevel::L4 =3D> 256, // PDE0 dual: bits [28:21] =
=3D 8 bits
> +                _ =3D> 512,                  // PDE3, PDE2, PDE1, PT: 9 =
bits each
> +            },
> +        }
> +    }
> +
> +    /// Extract the page table index at `level` from `va` for this MMU v=
ersion.
> +    pub(crate) fn level_index(&self, va: VirtualAddress, level: u64) -> =
u64 {
> +        match self {
> +            Self::V2 =3D> ver2::VirtualAddressV2::new(va).level_index(le=
vel),
> +            Self::V3 =3D> ver3::VirtualAddressV3::new(va).level_index(le=
vel),
> +        }
> +    }
> +
> +    /// Compute upper bound on page table pages needed for `num_virt_pag=
es`.
> +    ///
> +    /// Walks from PTE level up through PDE levels, accumulating the tre=
e.
> +    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize) -> =
usize {
> +        let mut total =3D 0;
> +
> +        // PTE pages at the leaf level.
> +        let pte_epp =3D self.entries_per_page(self.pte_level());
> +        let mut pages_at_level =3D num_virt_pages.div_ceil(pte_epp);
> +        total +=3D pages_at_level;
> +
> +        // Walk PDE levels bottom-up (reverse of pde_levels()).
> +        for &level in self.pde_levels().iter().rev() {
> +            let epp =3D self.entries_per_page(level);
> +
> +            // How many pages at this level do we need to point to
> +            // the previous pages_at_level?
> +            pages_at_level =3D pages_at_level.div_ceil(epp);
> +            total +=3D pages_at_level;
> +        }
> +
> +        total
> +    }
> +}
> +

We have a lot of matches on the MMU version here (and below in Pte, Pde,
DualPde). What about making MmuVersion into a trait (e.g. Mmu) with
associated types for Pte, Pde, DualPde which can implement traits
defining their common operations too? Then you can parameterise
Vmm/PtWalk on this type.
