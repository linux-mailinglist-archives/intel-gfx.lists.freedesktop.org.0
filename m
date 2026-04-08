Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJnMC5NX1mn5DwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 15:26:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFA53BCD3C
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 15:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9FAD10E0DF;
	Wed,  8 Apr 2026 13:26:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="qtcIiZV6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011033.outbound.protection.outlook.com
 [40.93.194.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8244610E0DF;
 Wed,  8 Apr 2026 13:26:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g0RKo1usvZAy8gjh5MYiKCdKMT5CTb/PzAzjlJsZ2axK7Jrm5ytE6pvBHAgs3IC2RGl/JzKlg3v6qKmxr7tFobQjP+TS9Hoq6pLrCkw+kE47FfgUFomgf6I8CtGyKxH2g+/fWK594gmKRUdpIszlkBzNOyLyj/9ybgefACsYpgvdG4El7WpYMdhgdpUNmJbqo5isC+sZZhI4XzC328P6qRZZUMzV2D0sZMNz2IpHWc7HUHHarLmrfnm6qQubxeB3HnKvmtncwFdVqOxwxTxkbDzxWuzCeDIekD6idkkig3uK3213GJmHtC1+q9QhayZEMkaJexi+/xvRhcS3BU13eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+0WKHuaMbQSnrk7PbUjQvaDW9gAo22uZOHqMyCYbf5Q=;
 b=SGRY5FW3xVYA3PkMYp7r54pZNWvqOKB+OLYB0sy+3A+UGt0QOjQ/aaMaed/WTnRXV+ciW4Pg+yEPB/gdGgIMulNC/DXC/4Ry4sfj1t1Fq9kVSVhppbZ+J2Y0IKZq5OFJ57u2nHI8YDpwzA3eV9NfXgVT646vtgk3EzVS1J4BHDxRzWCb+o2y0VTD4MCpGUP/t++3it5KaLmBG78Pfmv4Be0nE/EuCV7Y0Bhq5UNZJn7MNb9GZ7AzIQsfw8oYc3s6RP9JnjA+IjyTvqYmUKZVMHb8zE0jDUx759fQD0i9mu6VrmmusDoxzqu9hS7PZ+zlXddLSBXXUQeSoNgjodUmnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+0WKHuaMbQSnrk7PbUjQvaDW9gAo22uZOHqMyCYbf5Q=;
 b=qtcIiZV6glsV01tSAVThLENvtPKwC/LgKAwaNVZqrsRakD/y/yGtBDg1CfCRTZnpeaYPUzyImmCGpdmuUjsCvVW/PegFMPemz1yak028SfRGTug6Dljr0TM0lurtSb7BaGRpXe1muTnnRuo5VEVEcTlZLFf3mCKmzL4eQkG38FvY+E1VHtGFhWdVaAfV+gX/QS2y1mZUaVGAHIPi9l5+uiKFxMqK/+S8+hZFUY9cO4FK4rOoGcM/MliKGNxhaaIHN1XMIekirxLOgxrgSOueKf6OfS6O39c37OXOS3IMt3y0mL1prYaidBkdwgi/gOOTnWSDBqzq6Mpo1XGPARvETg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BL0PR12MB2353.namprd12.prod.outlook.com (2603:10b6:207:4c::31)
 by DS7PR12MB5910.namprd12.prod.outlook.com (2603:10b6:8:7b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17; Wed, 8 Apr 2026 13:26:19 +0000
Received: from BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0]) by BL0PR12MB2353.namprd12.prod.outlook.com
 ([fe80::99b:dcff:8d6d:78e0%4]) with mapi id 15.20.9769.017; Wed, 8 Apr 2026
 13:26:19 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 08 Apr 2026 22:26:14 +0900
Message-Id: <DHNT32C2Q5HN.LLME0RV17Z8V@nvidia.com>
From: "Eliot Courtney" <ecourtney@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <linux-kernel@vger.kernel.org>
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
 <alexeyi@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
 <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
 <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
In-Reply-To: <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
X-ClientProxiedBy: TYWP286CA0005.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:178::23) To BL0PR12MB2353.namprd12.prod.outlook.com
 (2603:10b6:207:4c::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR12MB2353:EE_|DS7PR12MB5910:EE_
X-MS-Office365-Filtering-Correlation-Id: a307159d-a2af-4f98-e767-08de95726ac7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|10070799003|7416014|1800799024|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: QBn4jI1BV9swudwY4bktpxr6E3NarbaRuzTJrZgslkHgBN0dM8IIkR1KNRJLhJe864XrodNWiwRK1/vKec8QymNdimEbzOuYBCHyOwHhPcMTnIultc6/HbfZ/8MRtUuh5rftOAv4ZNAk6/35VcWJ3PWBn/YFuKOcwg5Hhi2Bf5sRHf6zH+VOSB1XQMYMqjlyfTReZHD+6GxWGK3r/Yv5Brn+Mqqlo4FQeZBDlA5aFITr6mRrnU1QAgBz2TlIt2YTbJADOKu3mOx4BPb7mW7O0EKf/Byhc0cjX8vDcCoGN4vKmwvO38bGjvK3KPa5WpHiMOqQRZ79GrEicjUyNWnOzh/bArUgWwGxzwgGM3nvX41znLDiC0R6cZvHqMOgCpqBMLpYUwnuB1YISTrpPSPzrwWoTKv/pi03T4+ZKlT2GZE5TWYatloj4DEndlsILyl+kFiI+E1MvnNJXvraI/raF4+0KzkkSY+evbiQgJDOMkpXhvxdbfhnp64btcAb4U+HSZS9IMz1c+OjNeigHR/2QbIET6lLbDuJqHVCFkAGB7mwBuFK9fOBqjwMEOhjl/A42ndJCCm88BG+D+BI7wYJfXmWAO9ueWurvtZSv5Ph1QrbrU2Iag08CotTCyKT+4byGIu5G+z1rg/Vgy6KJ9rTWFv/BXKTiXYYz0LcMJwVktTL0GPtPFA89zFTMZ6M7RRCLXZJc28RtBX4hwqEt1X+5mjrPl9ZCG4tWOLVcg/0PoI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR12MB2353.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(7416014)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGhETzZCVTlJNHNTdWZLVUd0elh0dTB1YjQzaFFtREFubEprWVZUSk5laSsr?=
 =?utf-8?B?MFcwVnZPUXU5VTg0SnhRbkRHVlEzdC91a3FxS3I2MXNXQTVYNjk3QkVzaVJx?=
 =?utf-8?B?YXo2djNZdXArVkFCRDlBUFo5V1lZcHVCczN2V1hCZnMyT1ArWm5XdzkwdGNP?=
 =?utf-8?B?TFF2bGNLOThRS21nOEVlTHNZbEt3Zk1vb081cTJra3R6ZGxhWkN5SWppaC9k?=
 =?utf-8?B?NVBBNWYzUEZwSk9yeFpaNjhzTDd3S0NtWS9JS2hGZXFNdTBJRHY1dFhnWkUy?=
 =?utf-8?B?M0ROUFd5ZWh6ZUdHMWE5Mm1CV0JheHd0c1JjbXJsbEd6bUVUdktwU0VlYlNH?=
 =?utf-8?B?ZmJNZWxtbGJabHYxaWt4RTYzcU9YNDNTT01PS0pQWkNCbEJBSG5lenROUXQ1?=
 =?utf-8?B?bVhsZmc2NVFPbzJ1V1dhR1RwS05WVnQ2Q09VK1ZHSWVkRjllNGVaK1l2ZklX?=
 =?utf-8?B?SnRhVU51NlY2NURGd1lMdmxGNDVsSjdtTW5BbXZ0bmtOcml5QWZ3aDBEM0My?=
 =?utf-8?B?a2pLaFdvdDA2M1BlOHdvRmxCWnJGL2h6dWpXNlp1V3A0Yks3YnZ0L3FlUFNv?=
 =?utf-8?B?WHpOaTZTUWRQZ2pLRjdNL2kxMzN0U20vTDVBQXpyajJYQllpZlR0Z2FwU2Nz?=
 =?utf-8?B?T1M2eXJneDZkMkpUY3o4R1FnL2o2c09vV0RsVE5obElMTkVNSlBOaVBzam5V?=
 =?utf-8?B?WDMvRFR4UWNtT0MraWV2dmFTcHF2V0hlSTVOZFQ5emxrTys5cDJlMEJGTkR0?=
 =?utf-8?B?K1BKQmgyc0JxL015ZWRrT1JwY1Q5aEhwc2owWkJCRkNGYmhtWDY5WEp1TFZi?=
 =?utf-8?B?T1RHU1FaQi82QVdzbE5FV01zUEN1TlBIeGx0bW9jdWtVbit0SDVVZVpENVlC?=
 =?utf-8?B?VFpDcm5iekNHTTZrcUVPbXQvN3JabXF3MmpYbFJ5NGFDSG1zOVF3aW1NRDVS?=
 =?utf-8?B?SmFud1J5T0NKU3NFSTJxRkMwQzM3VFNNUC9nN0J6WjNxdTNiMW0vU0hjWnJh?=
 =?utf-8?B?Mnhwejg5OFZvQ1FpZkZNOWVpZmVLR0ZmM2Y0M29XVW9KUmdtZENvSU1WcUtF?=
 =?utf-8?B?WUEwU0MwanpJNDNIL3BNMDg4MUZxSnZ3MjlkakEwWXZVdlJNZjA4RHN3Z3JQ?=
 =?utf-8?B?VEJQYlB2NXlZdkJod3VZSEZvV1JEUzFXRVhNK21RUzdnMzVQRnU5cUJaNGs4?=
 =?utf-8?B?bkhMOFp4SHlVVHhSRnkvNDB4WVJidWhxejVVMlhITEQ1ZU5VL3d2WG9oa3lB?=
 =?utf-8?B?c0UrU05HRVF4M1FNY3VnK1pCV3YyOHU1c1N2RUxlelRMZEJXVHVxbGlaSmh4?=
 =?utf-8?B?MTFrTElnTCtLbHlOcGhYWmdyOUVxS3VVS01yR3hHWHkrNWlBWHZKMVdraDJl?=
 =?utf-8?B?azd1bHUvYThJbGQ3OERzbDRnUllDendwOGwwcEQ4TUFFM1FyU1N0QlN3akgw?=
 =?utf-8?B?WmpUMkFsL05zeUVwbkpLaHZsQmprS1hZM0tpaDd5cFNmU0V1UkxEeDk2aXgv?=
 =?utf-8?B?M3VYNVRYNmUzQlBpcG00aFdybnhzZ0RYbVlDblhaOE5zZXRyNHlqNTIySzJF?=
 =?utf-8?B?WTNiTnBMeldiaFZEN0QwY0J3ODliRld4VFBNM3N3Um9zZzZEWjlGWGlYbDQv?=
 =?utf-8?B?L1J3QzN5aC9LaVdSSmlUeXRoQzNCUmtJVTVXUmxvQ0pyQ2E3M05ZUDVBV1Vq?=
 =?utf-8?B?eHdoMzRrY09saG5XVGdWYmluYkphZXBDNnNhaXdVUkpGbEZTaGhXUFh1QWN1?=
 =?utf-8?B?bXNXcW5oV292MXYvMWp1c3RjLytCcDluRnpGMDdzZDkxNmx6ZmxkSEJ6YzY0?=
 =?utf-8?B?K3lZN2xObkkwb3E1NXp1aE82ZVdxSXJMZ0c0UUJhZEQ3R3FtUjh6YjdkOHRv?=
 =?utf-8?B?a3oxMzFQR3VXVVRFS0FYaTVZVUt3TS9yRld4cEhjMEp6dTY1REgxd2RkR1Z4?=
 =?utf-8?B?R3p6YlB1N1JwbFM1Q1BobFpkU0RHMFU5SVBsc29qZUtkRXMvajEwdkptV3k0?=
 =?utf-8?B?dnJIQXNDOGh3Qk9nNGdYd3Yxc0pmNWF0MWF1RkM0MG1OWm5CYXNVVHB0bDZ0?=
 =?utf-8?B?N3NHWWp6d2k3UTdvcWlLN1k1ZEovWUJDVisxVXF2TFlOTk14elEzTDlQaG01?=
 =?utf-8?B?aC9zUlNVS25HUkQvWHVBY2NXb0d6TVplcDl2RERmRDdGNk9VY3VCTFcwc2JM?=
 =?utf-8?B?dCsvMi91OXByUm1aRjBBemY3QmF3aDM5aVdSazN6bytOVGxXd0N0T2pmUEkw?=
 =?utf-8?B?Vk11c1JTQVZzdDFVOHhXdmdqRkJ5eU1JcHFZVGNnN1BidU0wZVNIQkhFSTQr?=
 =?utf-8?B?bmFoNzQxTk1nNlNuOXdEalJWcjJtQ25UOHhkRnFaMnFDa1JjQXJTSi8ybFFV?=
 =?utf-8?Q?E29F/BVXf4npUDGswHQD8xrQTin0BY+RdWUUmmPY0pasN?=
X-MS-Exchange-AntiSpam-MessageData-1: esiJ5NSsLWqf1w==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a307159d-a2af-4f98-e767-08de95726ac7
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB2353.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 13:26:18.7623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AU/YkZwBwnpcXWsTJxhGdIW8lOrl4UcFDzC3PpZp1AkIPNRGgVukaA+ab+DCfnXJ5Bft0AD9wl2ElEH76oSu8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5910
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
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:mid]
X-Rspamd-Queue-Id: 8BFA53BCD3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Apr 7, 2026 at 10:59 PM JST, Joel Fernandes wrote:
> Hi Eliot,
>
> On 4/7/2026 9:42 AM, Eliot Courtney wrote:
>> On Tue Apr 7, 2026 at 6:55 AM JST, Joel Fernandes wrote:
>>>>> +    /// Compute upper bound on page table pages needed for `num_virt=
_pages`.
>>>>> +    ///
>>>>> +    /// Walks from PTE level up through PDE levels, accumulating the=
 tree.
>>>>> +    pub(crate) fn pt_pages_upper_bound(&self, num_virt_pages: usize)=
 -> usize {
>>>>> +        let mut total =3D 0;
>>>>> +
>>>>> +        // PTE pages at the leaf level.
>>>>> +        let pte_epp =3D self.entries_per_page(self.pte_level());
>>>>> +        let mut pages_at_level =3D num_virt_pages.div_ceil(pte_epp);
>>>>> +        total +=3D pages_at_level;
>>>>> +
>>>>> +        // Walk PDE levels bottom-up (reverse of pde_levels()).
>>>>> +        for &level in self.pde_levels().iter().rev() {
>>>>> +            let epp =3D self.entries_per_page(level);
>>>>> +
>>>>> +            // How many pages at this level do we need to point to
>>>>> +            // the previous pages_at_level?
>>>>> +            pages_at_level =3D pages_at_level.div_ceil(epp);
>>>>> +            total +=3D pages_at_level;
>>>>> +        }
>>>>> +
>>>>> +        total
>>>>> +    }
>>>>> +}
>>>>> +
>>>>
>>>> We have a lot of matches on the MMU version here (and below in Pte, Pd=
e,
>>>> DualPde). What about making MmuVersion into a trait (e.g. Mmu) with
>>>> associated types for Pte, Pde, DualPde which can implement traits
>>>> defining their common operations too?
>>>
>>> I coded this up and it did not look pretty, there's not much LOC saving=
s and the
>>> code becomes harder to read because of parametrization of several funct=
ions. Also:
>>=20
>> Thanks for looking into it. Sorry to be a bother, but would you have a
>> branch around with the code? I'm curious what didn't look good about it.
>
> Sorry but I already mentioned that above, the parameterizing of dozens of
> function call sites, 3-4 new traits (because each struct like
> Pte/Pde/DualPde etc each need their own trait which different MMU version=
s
> implement) etc. The code because hard to read and readability is the top
> critical criteria for me - I am personally strictly against "Lets use shi=
ny
> features in language at the cost of making code unreadable". Because that
> translates into bugs and nightmare for maintainability.
>
> I don't have the code at the moment, but if you still want to spend on ti=
me
> on this direction, feel free to share a tree. I am happy to take a look.

I had a go at this, you can see the branch here [1] - it might not be
perfect, but I think the shape is directionally good. It's structured so
the HEAD commit has the diff from the current approach to the
parametrised approach. The main decision is where to do the type
erasure, I chose in `Vmm` since it looks like the main top level API for
this code, but could do `BarUser` instead. I think it's overall better.
I also think Alex's point about associated types making it easier to use
the appropriate Bounded type is a good one.

[1]: https://github.com/Edgeworth/linux/commits/review/nova-mm-v10/

>>>> Then you can parameterise Vmm/PtWalk on this type.
>>>
>>> The match still to be done somewhere, so you end up matching on chipset=
 to call
>>> the correct parametrized functions versus just passing in the parameter=
 or
>>> chipset down, in some cases.
>>>
>>> For now I am inclined to leave it as is. Also there's a Rust pitfall we=
 all
>>> learnt during the turing and other patch reviews, sometimes doing a bun=
ch of
>>> matches is good especially if the number of variants are expected to be=
 fixed
>>> (in the mm case, version 2 and version 3). Traits have some disadvantag=
es too,
>>> example dyn traits have to heap-allocated, parametrizing can increase c=
ode size
>>> (due to monomorphization) etc.
>>=20
>> Yeah, it's just this is a lot of matches in a lot of places. And we have
>> ver2 / ver3 specific code leaking into the general pagetable.rs file. So
>
> That's not a leak, that's by design. pagetable.rs is where the matches ar=
e
> centralized, most of the code changes here on out should happen outside o=
f
> this file.
>
> 31 out of 42 matches in the mm code are in pagetable.rs, so it is already
> centralized.
>
>> it would be really nice if we could find a way to improve this specific
>> aspect. We can reduce the match to happening in just one file.=20
>
> Assuming we know what we're improving. ;-)
>
>> You can> avoid heap allocation if you would like by making Vmm an enum,
>> for example, and doing the match based dispatch there at the top of the
>> API tree, rather than at the bottom where it fans out into a lot more
>> locations.
>
> heap allocation is not always free, this code sensitive to dynamic
> allocations in the kernel, due to MM reclaim and locking. I would like to
> keep it simple.

If you do the type erasure via enum in Vmm, you won't need to allocate
it on the heap. The branch I posted above has an example on how to do
this, although there might be a better way.

>
> thanks,
>
> --
> Joel Fernandes

