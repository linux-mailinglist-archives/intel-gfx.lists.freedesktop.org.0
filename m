Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFVHKrYBzmkwkQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:42:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 083AC384134
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5034010E368;
	Thu,  2 Apr 2026 05:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="YgLKIR0d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011064.outbound.protection.outlook.com
 [40.93.194.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0874510E363;
 Thu,  2 Apr 2026 05:42:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h6cElLBlCB0F2OQPkdE+c/QAf20yv5DG9bTE9vpyY+IQYin25uYCfqRJmZkmKIVxTXMyUZTt2mi1Y+dMCtZceMw6kB/y/6Tv16XQ2rHQOytozcryjPPRu13BnJTFMcoRF3rbc+PYmsM1dmJsL0JmK/zebWLJNzCQ330Il0rK0NrvRYE4p+GevobeoMtIpWh8D68qUlUpPVFto6j5G/00mdkiMNmS7vfEm5lsPW1AyuqQ7Su/GyperXudAX4pgI9nzDmnK7RsoDJnnO9Ohw7QLI/nkbiqgu6rB97AROdX7WdZjhcHX4lJUynqKiZvxwXhQO0E7yx7x4qOMQXhy3hCSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c9tYIfQL2IPjRWRKQHf9JjUyajpFG2V+cIzuwHHESMo=;
 b=TiylFywTESLn2YbtXxltRQOy/XuqAuNwt5fphrHNnc2gRKnNEdYQ1FgoJP8Jmr6z6+JxwgTPh2jY9qnzKKC5Yf6KG22ZUn3AQUg9TbdcGj4FFRm/K5/b98ZgtWVqnrp6ejOABFpVz2gWYywXpiw1rAJ8HBtGwVl1EVA2U9Inu2g7seYixMt8eh0L8v6uAnqbx0Ab63KizyIOzrQtvLoK6W8H7tW6Hc2dEtcGwAD2XTUjHAVrNPJwOsTDwB3FqcBlnKEp0L88hYL1y0n27Iu8yoku7BAcr5CX9qBeIRrBt0HKIxrmRu0J4dZfHLq7RY+FqC79TkdngUPd30DfNfWV9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c9tYIfQL2IPjRWRKQHf9JjUyajpFG2V+cIzuwHHESMo=;
 b=YgLKIR0dswhJVWydQM22e9JuiY40Wlu1ETd2Seb6RTRQdBPUq1MgWS2rvhMkpchagLyd5d23qOMyaYrYLfrgSwkKEcDGf/NyvUcsa8ZH7RpVdWM1qZmMvcwZtdbWf8TOz/qco24jNSdNl+TzBZMM4AcnQRJygTuGq++2h2YVW2K2GTK9LVPXnUh6GDm+8SLuU/zaLrjB5ZNnWMyBwcWAEv6AGwNei0c4O58l1d52egpHlIxTShq0j2tzxjNAGipxll/Upw61/BVCd9hO3wEfac9wgF0HOvw+n1Dz2m4ZFxPaeIwWI8urU4+1/BQqN1HtqwZ5epVfuM1mia/ATtAPgg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by DM4PR12MB6302.namprd12.prod.outlook.com (2603:10b6:8:a4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 2 Apr
 2026 05:42:02 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.017; Thu, 2 Apr 2026
 05:42:02 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 14:41:59 +0900
Message-Id: <DHIFGC4E879U.AXIIQKGRZQAF@nvidia.com>
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
Subject: Re: [PATCH v10 10/21] gpu: nova-core: mm: Add MMU v2 page table types
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-11-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-11-joelagnelf@nvidia.com>
X-ClientProxiedBy: BY1P220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::10) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|DM4PR12MB6302:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d738d14-e376-44cb-f3d0-08de907a9095
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: RhVdLAsIfCO6r8g0bX7kiEuDaMxdzaD5DN7IcV60OTKILLXcfms20b5jvWBxdrQZxCfmX//o5UYVvTcScFjG94Lvi/p6LGlm2o8oHzSKd+H8eDJS3LEkeazPbBjEVR0GduD6f5/b4AKWBgzMzXU6KfAZvByLqEQ3PfUwSjiAmV3kT7ZdwWwp+lPbBq8A0fWGj1foWV9XGT+YjmqUfD7oxd+s7mtTS5Eaa6HOs5rV4SVpcu3eSsYsQCpzDUKDv6DUFh04weq8dqtq5azHnRv7zkW6YbxBeWK+x1wto+21MJsljbTMzgJkZfFF0Ns5lB9tJutjO5hNJn8VVlDV8fRd3sb38TXUIO57+ae8dsxgX8U1kPZAkSF2xROszCBBCASvN9C2weKZgfWfOQbtFFudpN0NfABGHp30/mYN/IfaM37r6LBzVbe/KK2utaZTJpUsW1ZtLACtcxoHOKUzGfKrjJJU//R8nQg517BJ6Fob2vX4W3LcYmVyb96UQg/1GpIYIxrL0TaMgcOX9JDKLD+tGo6IKBr0AW9tUzP8twRJLMhMgbHM1TuNkv4TCC4sDrJLFkLVPWuS9kkK9yHFMZHCiRjtxWMQw9GyD6OOLZrSGA85GS44j2YFPcAwbnw/+Yr1mbH7BZet1HwBd3XCoWiGiA7ATJd8AunFpFcv8+RbpNIC8GbvgiPcMncwpBwWfJjJoKYcRHNnEDNr+DteJlx0qSs04fRraqBqIgXuHszsyDw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3BMTFJ0WWFCc2lOai8wUklMNExaNE5KdnBBRlBXYVFuaUE4MTFDRWtTN2VI?=
 =?utf-8?B?NVJtSm1NMVhPbnJRQld5UmpnNWhpZXBRV1RmWkxxWDQ5SG5SWFRNc3haMzNk?=
 =?utf-8?B?Tk5EZ2ZQaENRUFNDL1BtUzBVRzRmVEJYNSt0T0pIYnd3VHIvRlU0VkJYRFNz?=
 =?utf-8?B?eHVveHhGME8rM0NlUS9paC9kZC9TVWF3aFJHdlZqMm9oMWhveTlrbkVmZVFD?=
 =?utf-8?B?Z2RHbDArbmxDQzNHZXR0N2FsWWJpdjFRVk9jSHhNMkhPZDY0RWZxYVl6b09z?=
 =?utf-8?B?UjNGTFZoQWVZencxc1FuR0wwWlFLb3dMNDBrUkxnSmtTcmlZWEJXRnVPTkZs?=
 =?utf-8?B?aXZ1K0dmdWpvdXVKR0NjT3lSOVZITGY3UEgzdUI1dmtWWU4rSGIxS25Odklx?=
 =?utf-8?B?Wlg0VkFqNW9wZ1E1anRBdmoxS0QwbkZ2cDlkYWRobzJrcndoY3dXaVJPQUdW?=
 =?utf-8?B?b1ZQdEtWc3kzb0tzWHVGTlkxTnIra0N1Q1dyWGkxcXhuajkvTCs4Z3BpRFY3?=
 =?utf-8?B?OFZSNXJqakkrcUkxK0VGSktXL3UvcjAwV2h1NW5rQjhxLzB6QjVqc2Z0WFVx?=
 =?utf-8?B?Q1pxY1doOU9HUko3cjB4YlJkNmgvWVJobFoxY015a0RCdEhSVzhOV05BcWFU?=
 =?utf-8?B?MzVnNjVuUERBUnFFY2ppVGw5ekJJMThWTzZFSXJQZitZK3EwRkJvclkyd1NS?=
 =?utf-8?B?LzMrV3hzdjBUVzE3OHhodGJHWGtEYTVCaVluRGxCcmVEKzBQMWd5OGpCVkZy?=
 =?utf-8?B?R21NWkNFQUhMbjM4bm51Q3ZYQjZaVmZsaDdYaHNaYzhTNDZaR1hkVFcrdWFU?=
 =?utf-8?B?YVBCQ3pOTDArcTMyWW9kNTNOV0haRThHOURVMHFIbVhEdE0vdUF2dmI2R2Rt?=
 =?utf-8?B?Vk5BS2VSWlhORlJoWXhGanNONzg1d0VVOHVDQ0JtTzVqWGRiSVlPZ3JJTi9D?=
 =?utf-8?B?Wm5vSjY2c1V2VFVxbFZNQnFJWU9KV3M2NWNNWEQxV25zUTViV2NCWi96NGI3?=
 =?utf-8?B?WGFzTlFWdEs2TXY4eVdqbm1YUHIyQWRHQ2dKWndiWnFSK3RWMytQbE5kUC9r?=
 =?utf-8?B?TFBITGtKMC9uNW9zNkRrR1VURG8zUVQ0dXIwZGRRQkdLNWZQZThaN1hsY2lj?=
 =?utf-8?B?TTVRM1BjZ3BoOHdISjJiVmtMU28veDZUc1VidG5SbldJQ3gxVUVFSWZWcVRx?=
 =?utf-8?B?emxZeXp2V2N2Rlg4dG9NZGhCWExPVnYrelFuYmw5VDhDSFNwd1hZVHk5dzFr?=
 =?utf-8?B?RiswNk5mU00xbmtxa0hVL25MTzh0dEtOZ2xnWHllcDN4V0ZCbFE1aFNlTlhD?=
 =?utf-8?B?SlpNdHFMOTVSS2ZWaXN4SnJzUU9IektOMTlWSnN0V0d1QXF5bm1NSUFLNkxj?=
 =?utf-8?B?U29weFdJV01hSVUvNUxEeWszZ3VydHdmSUJCeFoyMzVtMXFNY2ZVc3ZKaEh1?=
 =?utf-8?B?UitZWWh2Wk94Rld0M04xZk9VbzRpWDd3Qm9aZE9IS1JYTlZhaUNhZy81UHdi?=
 =?utf-8?B?NlFNUDg4YzhVRWVQSmJ4UitaUmR1ejVXNzdVUjczcFRGY2N5NUttU1ZFTFRJ?=
 =?utf-8?B?c1RCNk1acFdYaGJMVzNCMnJYZXBSenZrNm0rU0VtaSt3M05UcDc3TTVCakx4?=
 =?utf-8?B?N2RSNFdZU2ZOOFhTSzdoZFVSSFFUcUJnNG9QWGZMK2JtbkVCeDdmZ2pMUCtB?=
 =?utf-8?B?dzRiVU5Nc1hGUU5LZHV6Um9qQTlQeUt2VTBad2NOeVpuZks0NGVkNVNOTWJT?=
 =?utf-8?B?azF5YkswY00xVXFUdlg5RzJVU0ZhV2pWVnVPRnU1b1ZrQTVZaS9qa0pqYlgy?=
 =?utf-8?B?S255Z0VCd3BxWC9zZ1QraUJyM2lqdVRpUGdLS0wyUEp3YVM4UTVBWVF0WHNm?=
 =?utf-8?B?UkpwdTlpSFdEbC8vUkNWcEM4U3FmTEszN2trVkRkYmRPQk5Nbk1vT0wxb001?=
 =?utf-8?B?R1BldlUvTDVMNHBYNDV1UHBZVFZvMm9Ka0Ruc2xQN1JwOUtMNW1KeEJ6dGVT?=
 =?utf-8?B?elFETWhFSW5VbHpUTjYxTEM1TGdrdXhyVHBxVzN4Q3lCWmRCaEpHNXNXWVlR?=
 =?utf-8?B?M1hneVRVRU4vZzc3cG8xbkRZcy8rTzA2UmpWVnZjNWxVbE1kMjh5TUJWQmlH?=
 =?utf-8?B?Wnc0ZmlFYmJzdS92L25NOWxlc3YxcW5Eb21kUzdFa3JRK3ZCRVlSU0YwZlN0?=
 =?utf-8?B?Vk1nRUk2aGE0aDNvQzluWnZ5K3M0Q2JvVUEwVWVhNkIwdE9iUVNtcVBtSWdH?=
 =?utf-8?B?T1FOMHNIUDBPcTFqYUx4bVliZzZBV1R1NldSWGN2cmVqajNBVXBQV1pVQXc5?=
 =?utf-8?B?eHNSZ3NYRDhXMU9Ubnl1N2NYRkpYdWtUTllJVXVJMTByZzhSbzNYVEwySzY3?=
 =?utf-8?Q?PSGHynQiFLDdVQH6avcLHR4QJZZXcoMhGwu9hhi2pDZ1C?=
X-MS-Exchange-AntiSpam-MessageData-1: HIPPaJWDV+APkg==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d738d14-e376-44cb-f3d0-08de907a9095
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 05:42:02.0630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Jbvw9BVIiFR2YeOdvx1hQD8d1HefVokt/umtoWD1a5yd7x5tE5V9sH47DAlPyGNwh2V2p/TVTnaJthjxU6zBQ==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 083AC384134
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> Add page table entry and directory structures for MMU version 2
> used by Turing/Ampere/Ada GPUs.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/mm/pagetable.rs      |   2 +
>  drivers/gpu/nova-core/mm/pagetable/ver2.rs | 232 +++++++++++++++++++++
>  2 files changed, 234 insertions(+)
>  create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver2.rs
>
> diff --git a/drivers/gpu/nova-core/mm/pagetable.rs b/drivers/gpu/nova-cor=
e/mm/pagetable.rs
> index 50b76d5e5aaf..38d88f8f09a9 100644
> --- a/drivers/gpu/nova-core/mm/pagetable.rs
> +++ b/drivers/gpu/nova-core/mm/pagetable.rs
> @@ -8,6 +8,8 @@
> =20
>  #![expect(dead_code)]
> =20
> +pub(crate) mod ver2;
> +

This looks like it has more visibility than necessary. And it seems
incorrect for anyone in the crate to care about MMU version details.
This can probably be just 'mod ver2'. There are a lot of other types /
functions in this series that could have tighter visibility. Could you
go through and see if you can reduce a bunch to private or pub(super)?

thanks!
