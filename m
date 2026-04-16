Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLjsIoVp4WlZtAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 00:58:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCF14156A0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 00:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6239610E944;
	Thu, 16 Apr 2026 22:58:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="BtEBHUWX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011036.outbound.protection.outlook.com [52.101.57.36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A9A10E943;
 Thu, 16 Apr 2026 22:58:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xZ/8TyAszUGA/W1a+CDtR8vnSCMnkRRhNtidM5EFf+TtNQhkpWY3tVgK+PMp5JmNO9eKVxC0TV3enKDVBbpY6GhaDT7oOB1yr19UYxNA9scX5CVZLof/cj97EZnhqMb525z2O5PlfYqMAZG8XEkjKqeHWQh3Fill0LL4KektucSKeubWsUxQiESESN2dJN3ZNvfFxOqhWIxMF462jYs4xCd77Y5T6XlXxmTS34BoZkQCBDtcVe83iaeIHqj5BddIVPrnM5By2ePAZqzbb2uCQOdcUyhoK3yxe9yOSx7cxu46K5JKV+YBNS4Omcs4ldspk+iiRojXvEQLzRo/lf1Jhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l04Yjos5/GQBO1ZPXyZKyK7pc+/Re+BdR/ysrzS7toY=;
 b=KTNf477BF7JT4uiWxt0GrXKaL3aRJkt1mJUjSs4Ml1XBwU3sERMsEzfljwexma/JW/bVgFUJz+oysE6Gyqkn1dvuXDKSQ/wTps0EsKczu4HmZmh1iPgc8QvStb/UHn8U8T+SzLOCmSAcqneTP1o1bWqs47wfT/vMyT2/zVq2aHnHuunu2z3/OitbyY9kEVMcgXpHHJQ+YtIyHrqoC0PkW+Cd3OivSVGgcYqixT0B7IR7carKuoK68perVZpn2ZOEuJp2X3iRMVCPY2d2/AyozLbWZCbjOWO2st1bLO5U63zutaqT04SMuiGVBIV6FOXf3OA5+gd4ZpY3gINUVucWrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l04Yjos5/GQBO1ZPXyZKyK7pc+/Re+BdR/ysrzS7toY=;
 b=BtEBHUWXSRnotfeG2r3yxlBbu0xMLf+7RqiE80gollIegqqIAkk0YrR3KwwafKNTZh8f7Md/aZZn6chKZw7ESFG9IEGhb7S+0FR9bGNDeE9AyEszZWDHtGTgNpIIUFBIYeLp3rz7X9nK3KSUTvonujbex/6Now0VJld8vaEjZFBMEBEmBf/dxW/W2cffehJOVIUdQEyxWRAXrQ2aF0Jn/H9whFfDTnhCrT3/eRP1nzB8wTnwgkCyqiJkgylqi/ZG7mM2to5rx03bB4s2ZdRyfd+b2z3KZPwsJ1kzy5yFLHsjfO+zxGa6XgA5ECzMZqOT00Vru5mjvQ5Q5KuJWmKdOQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 IA0PPF12042BF6F.namprd12.prod.outlook.com (2603:10b6:20f:fc04::bc8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Thu, 16 Apr
 2026 22:57:58 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.20.9818.023; Thu, 16 Apr 2026
 22:57:58 +0000
Message-ID: <a23f6848-b685-47a0-a4a9-d23b132bcddc@nvidia.com>
Date: Thu, 16 Apr 2026 15:57:53 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 01/20] gpu: nova-core: gsp: Return GspStaticInfo from
 boot()
To: Joel Fernandes <joelagnelf@nvidia.com>, linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Timur Tabi <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0062.namprd03.prod.outlook.com
 (2603:10b6:a03:331::7) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|IA0PPF12042BF6F:EE_
X-MS-Office365-Filtering-Correlation-Id: cbef68fc-195a-4799-91bd-08de9c0b99da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: C+Oi6nfwdClYpJ2x11eol5PGXwg17I3xK2g/lTQ8el7I/aK3LhiZDF8xLync4eiiaX+EqcSegKm3D6gsJpFoxZ7Pgbz54PzyQyPVdfDvTOwBRMDmMQNWSXbqp47XnMFa5tBgfq7fPGJTKwCjFB7oGaBIDk/Jey3RBWpPm83ZanFbXL4pFfS9rZa5ApZ3Ex2++IK0iFnXxcXkMAlwSejeTm6KEGpt6yKfaOpC1J6/Hb1rlOcXom0tDZufI3GDP25t0VFyljXKxto0r6LP1ny4tzzI25AzVEoTktuPj4NnrlMzYWJTj1w7lKt4ezAYTX6+mJ+ju2O43WtF7PlYb9R7fiBdZoLZDn31nLKdOUIanIMD6cPGZr/2UIAzgIO5BjjMmEdY1WdBi++Kl4EP2+5GCcbsUL4kDPkAs/ryY/qpj4z0XzIfcwXuNRVw5MZjZH9K3Zl78GhxSkAac8K92qJZ5zDlDksrZlMrN9V/BSmXkjhx/1gKarHEzDxngOQpDUxDnOvFZC+yUHwK6Z6sILdiMIx+FuNe6LKQ0XmtiA6YdO7aRtVTV62loJMvXVc7c6NoTuy4xzl+TppvoWVohrQg+GN6Lkw4qkne0zyVgnXkESEsb+fykeftGD5VYtXi1pYf228PCtVQjD5y93n8d93WYWcZssCmdaT8+vbqFf6ENpl6jToENkSbYZ+sKb837RW44cjZFJ0kG7Y6NrQ/YJCvv9C/zRo6TiOR6T87OfEvZPw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vmx0NFQwdEV3SkxLRXlrU3ZtcjdLNXNIeW84dVhEeWV6bk80aGtaWXN2bGdQ?=
 =?utf-8?B?OE5YaEZTZFROZlQ4VUh1TXZqUEZ0S3lzS25zZ01rWm9teTlLMS8reUZxMzBF?=
 =?utf-8?B?Skk2TGN6ZDhpWENtc3dBbUNWc0VCTEdYOGNjWEEzdzFRcjFBaUt3OFR4eTAx?=
 =?utf-8?B?a0theFd1cWY4Ym55NVhXZDRHUGRCM0l2V1pKNG8vMm9FdnpCbzdobjdQWDJq?=
 =?utf-8?B?ZWo2SUN5MVFza2g0TUgzVGV2RitaV1JZcThLSmtweGZyYkFJMVhGSTM4Y3hq?=
 =?utf-8?B?SG5wdFVTSDNrSEQ4SDN0dndCWmtJWWdXQSs4Yy9XWktGV2ttaTBlaUUzUEJn?=
 =?utf-8?B?RkQzMnZVZll3aFZVb0lzZnhJQ2VhTU5Ec1VxUjk2a3FFQjJzb0l2YjF2a0Z3?=
 =?utf-8?B?K1VxMFl0aEJYd0hFa244dm5iWDY5NjluVnBYQjZFZFRNd3NtRTlHYk5TZVRY?=
 =?utf-8?B?c0lSMmdvekdYTGw3T0Q0VVNVV0swUE5TSVFrcDVTTUVKaldNZWFVTHNUbHcw?=
 =?utf-8?B?ZG9xVVh0UTZXalJEa09YTEdsTTFSYnBpUjg5cDA1RENlbUJidnFZMzFTNWFL?=
 =?utf-8?B?VE8rTFFuVG1zS0lUM2pWTFhlaWl4UDRQaHpoN3RNUFFZNTBnYlF5WFMwd3B4?=
 =?utf-8?B?VFBoUmFxQVJkTnpIMXF6UXpicFU2Qlh0aGorcDQzMldaeHpYaWlvL3BOVVQw?=
 =?utf-8?B?NWRXUytvYVJBU2Mra2x1bkcxc0hLbTNqL3k3aG90VGp6cVhvai9uSWxDWXJI?=
 =?utf-8?B?WFhYdEYydGRDUnYrWXlqMEtFWjdxc0JPWmV1RVVrRGdzK1VVYUlHaFVwRTlO?=
 =?utf-8?B?YXB6OHhwOGc2N294bldUK0IxNTAxZDhqZTFDMExVV0YyR3U1ZHZsL2hsMjdC?=
 =?utf-8?B?T29BNG1kUnFDNWIxMC93aDhud3Q3T1dROGd5b0ZsSm1qWmNwZTFmU0o2ZUZ1?=
 =?utf-8?B?dlErRStSU3pLZ0VLREx6NWxuU3FjZnpod3lITWJUWTJVWElqODdDVW5pSlhQ?=
 =?utf-8?B?eXhIdXNnQVRYN0F3SFYrNmZrRHIrSUdBRmZzSEUyRndzZEUwMlV4UnZmNVI4?=
 =?utf-8?B?T3JEMHR1bDRiblZsYU5IYVI0RlF3WmR2Si9nRDV4ME90TFRnNC82K2kxSWRt?=
 =?utf-8?B?QXV6bVBKSy92N2N2NXhkc1IzUmRYS2RGUzJiaVZvWkFqVEpGelNFcjhTeStK?=
 =?utf-8?B?dVRsa1ludDQ0MHBKRnBYK3poOTg4V0JWQ2FWNkVRNDdnb0RjU3F2NnI2S0w2?=
 =?utf-8?B?QmFqbDdVRlo1WnM2YmVtMFQrbS9rSXJCR0hYOGdEaDYvcEF6ZDVkbEt5RDNF?=
 =?utf-8?B?OStiTEowWnFPWENOcEFNRjc2V1o5Vk5xWGRHdFV6NW9ITk5rNU1hRHBGT1Ja?=
 =?utf-8?B?L2lvV09yYUFPRXZFc094dXdzWmE3RW1vNVhMakpmdjRXRGdtNjB2OTJmZWxC?=
 =?utf-8?B?b1N2Y2RtaW8xeUtEZmNiUFRLYkpaNXQwSW54NllUcnE1VEk0d3RIMHpoNk9h?=
 =?utf-8?B?dmtCUXM3M2lVQmR2dy9NTC90N0dYZXRRNkluby9rN20rV1dsakpTR0ljQ0Nv?=
 =?utf-8?B?Y2F4NWFLNmJ4VStvWnBEWVdyRVRmLzF2NXlJMkhjYloxZ2NmUmNlLzZNN3ln?=
 =?utf-8?B?Wjc1SzE1TVg4R0pYdWFPUyszN0RUVXJQREtVR1lBY3FHUUJFYzFPRkZwT3BX?=
 =?utf-8?B?ZU1GQ2JMZkVuN1lhMGNBTXRvM0RhT3dCbnMzclorMWk1U1hhUElyUlErRjB6?=
 =?utf-8?B?ckhBay9tVzd0S2RUNXJCRXFDZURiTGVCZldtb3FnQzBYdFA4ODQxeUFWeUt4?=
 =?utf-8?B?bWVuNHMxb1JoRFU3a2ZDd0g3eW04cittV3k0ckJ4ZjFPemtqK24xQ1RoTFpI?=
 =?utf-8?B?bE1RZ3ZEMnR4U1g3Ni9pSWpRL1JGMmY3RDh5b01XeS85ZVREa2JFRG9OUGN2?=
 =?utf-8?B?Nk15Z2RNZ0pDSUdXVnFBVnEvVmRNdDFiNTZqL2hZUER1Vmx1QUZwZXhHWTBv?=
 =?utf-8?B?ZEpEUVVqTE5TYVFMaUREVWZpUkhQeEJ2cURUS2Y3THlTbUdGT1RFdkZ2c1A2?=
 =?utf-8?B?SDNicTE4RVMwWlVEb1IxS0JSdGFYcEZJVGdzN1FNN1FmaXRPN2ttQnNzNms1?=
 =?utf-8?B?QjhBTUlyTnl5aGJwTFVVQ01iVmo1QmpPakdrcGlYOGZmSDdmTEM0amxDd2Rm?=
 =?utf-8?B?OStjZHlsTjQ4SGZIMDZVTjJHbURxczRZT1hyd0E4NFNiY21LRWN0elcvNTR1?=
 =?utf-8?B?dGlwbHFGVnBiM2RPQUVGSVV6SnNFNTE0Z0Fic3lmRi9sN3Y5NmhGT1B3cTFN?=
 =?utf-8?B?STlKVzNYd1JoQWxIQzU2aHRNSnZjL1ZjWGU5bk5SNXJ6TGJuTTg0dz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbef68fc-195a-4799-91bd-08de9c0b99da
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 22:57:57.5304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1dEgi3WAfEvvlwAegcC3qybgskcTVtlvJFttsH5bqUUXOQ0Jzm3VSK4ohu7XCXd7kV3P+TQKUKXzt4OBY88EdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PPF12042BF6F
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
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: EBCF14156A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/15/26 2:05 PM, Joel Fernandes wrote:
> Refactor the GSP boot function to return GetGspStaticInfoReply.
> 
> This enables access required for memory management initialization to:
> - bar1_pde_base: BAR1 page directory base.
> - bar2_pde_base: BAR2 page directory base.
> - usable memory regions in video memory.
> 
> Reviewed-by: Eliot Courtney <ecourtney@nvidia.com>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/gpu.rs      | 9 +++++++--
>  drivers/gpu/nova-core/gsp/boot.rs | 9 ++++++---
>  2 files changed, 13 insertions(+), 5 deletions(-)

Hi Joel,

Looks nice, just a tiny nit about a comment below, but either way,

Reviewed-by: John Hubbard <jhubbard@nvidia.com>

> 
> diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
> index 0f6fe9a1b955..b4da4a1ae156 100644
> --- a/drivers/gpu/nova-core/gpu.rs
> +++ b/drivers/gpu/nova-core/gpu.rs
> @@ -21,7 +21,10 @@
>      },
>      fb::SysmemFlush,
>      gfw,
> -    gsp::Gsp,
> +    gsp::{
> +        commands::GetGspStaticInfoReply,
> +        Gsp, //
> +    },
>      regs,
>  };
>  
> @@ -238,6 +241,8 @@ pub(crate) struct Gpu {
>      /// GSP runtime data. Temporarily an empty placeholder.
>      #[pin]
>      gsp: Gsp,
> +    /// Static GPU information from GSP.
> +    gsp_static_info: GetGspStaticInfoReply,

Unless we have more to say, I'd suggest deleting the comment,
because it adds zero new information, at least as currently
written.

And I checked around: contrary to what I initially believed,
there doesn't seem to be a requirement to add this kind of
boilerplate--fortunately.


thanks,
-- 
John Hubbard

