Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HP2HjsDuGlpYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:18:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BB729A318
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 14:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE4A10E514;
	Mon, 16 Mar 2026 13:18:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="lZKCOgNP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013070.outbound.protection.outlook.com
 [40.93.201.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D271710E1C8;
 Mon, 16 Mar 2026 13:18:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bBQ7NDfFfQCVQHjilcyKwV995B4GNXFh1Vzh4BgWQCZlj/kPWcE8D7jxWh9bX2Ky+1dsKoPUDuGfVph8dkCAEytmlzUpsB2y2lz/BAv/4P7/iBCsG/fxxnTkw941wjk9XKm3AeEqvY8esXNRSbCq4x6NxLXcA4ZCiP2ZwadFe7NjTXj2sA9Xib1acKdgOcmLfD9JwTn9qWeFTHL5O0xC8OZBRNKPboc3GEczoylCkcIfFCEf6yxqB/x5PrnmvKDOGoo+SxUb7IQXijhP+Hcsa/bx4gDvBulGIH2a0y4uIIQxhvBbG2qhcL00lrzQ8InHM1B7YzMxr+gsqkAkrX4wMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5An+9Ya+9wveM9sgFfUHcjSOQ+oCBk+Vbivxs++ggg=;
 b=CgXFxcSkSieC8bRikI++1khPRm2f/dm4VmSZVhvFJFqDI+ZBjsvyiE1KR4Up9CihblcSXFYTCLKIijG3MCk7cOuu+ayMrmacxdElpaMoZJLvVIxhYqKxeuBWc57JuRg00610YvrVWmXnf5wWTvgGr3hcKEGRzTRTe1vaaC07uG4ql6Wa2ZPixCA2cxnA2F8LOuEhEbIIeaIg9gkLR7K08gdkhMI5Lt/9yT+INkqemLxyXXi+U2qcVyQTqotfl3S5gO48c1SpEx/4IQRD3RSs8axlljYOPpGxRadtDXBGui5vFCfVUmJbWYbQDW7J50yIBNBfvpdJT89CFRcnZiQInQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5An+9Ya+9wveM9sgFfUHcjSOQ+oCBk+Vbivxs++ggg=;
 b=lZKCOgNPliYyfcxH2WodkeuR+rpXLG59dkytEgnYej/UfHevqEZQ7iw66Zw6mbisDZTAZpEnRQ8zpQ1QH9DOEmeu/HDmkHG/G4b9anALLv9kDN3P5725ihBPGRXs7r67GVLibN/bLmqWSE2OHxEu7EtxoCDiEVL+8N1VQKlTvMK2eZs6g7RNDRny0dMTngBXmytOGff+ryR+0QwUDgC8ORztUeDaAtz1478bhFw7kn8z7tqAocBBcpIzgudVMB/pfRNYLg8GStm+2wO1sumsWvkVfCSq7uBQYQi97qS2yAxqWn4CLRktJDZn9AWsSZdWC5zYJAz2J3ub+O8aoWVovw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by MW4PR12MB7013.namprd12.prod.outlook.com (2603:10b6:303:218::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Mon, 16 Mar
 2026 13:18:39 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 13:18:38 +0000
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 22:18:35 +0900
Message-Id: <DH48IO1JI6HF.37NLGWHY2LY3O@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, "Benno Lossin"
 <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>, "Alice
 Ryhl" <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "Daniel
 Almeida" <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <nouveau@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>, "Nikola
 Djukic" <ndjukic@nvidia.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan Corbet"
 <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 "Helge Deller" <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>,
 "Boqun Feng" <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>,
 "Alistair Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>,
 "Edwin Peer" <epeer@nvidia.com>, "Andrea Righi" <arighi@nvidia.com>, "Andy
 Ritger" <aritger@nvidia.com>, "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh"
 <balbirs@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v9 04/23] gpu: nova-core: gsp: Extract usable FB region
 from GSP
From: "Alexandre Courbot" <acourbot@nvidia.com>
Content-Transfer-Encoding: quoted-printable
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260311004008.2208806-5-joelagnelf@nvidia.com>
In-Reply-To: <20260311004008.2208806-5-joelagnelf@nvidia.com>
X-ClientProxiedBy: TY4P301CA0048.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:405:36b::19) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|MW4PR12MB7013:EE_
X-MS-Office365-Filtering-Correlation-Id: cf165337-0032-41f7-9c38-08de835e8924
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|7416014|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: pifTIbYi0e+EOgBxpk9wb2CUTBYBdhZegdebGnuHvZOsrstf+Sm3vy+49Gdnc5h8AQXURgNCM76ZNbU/HXmlCrkXefVPxBo0N2j9mVJV/AubeZkDFSdJFN2wLtr/ngIJoacdspEPdBMnmS6E8NgnRLiwjC+mlMEC6zOWxhc0J6WCVknpTjefC9IcTiSOjFNDkq30Ha/NKsyYFZhGGppozjjY88fnJekTVlMxyIKQ/PqnBd+xW7KeAJ1vIjuDqcJtocIdyu09qV5hnfQ+eamtBpvnW4M3FNSyLnFeOt59sEVQcCE/7LcLcf5duwSnWWlEtUdPwYZVCpOrAjwA3nmIL27I9g4M8NewRfafAcPFcGZr54lIjqc7kWdUdmYKu6VTovJXCZH2KFa1kTzC8eidct9CZHPKZDwXHq1PSXKlvScb1kDxiVuXVApXLhrLHdvcTsgw+Kk+3OT2iAelYHq16U2lTqWo8CtztwQylwM8PSMPoM4sFwwo3tZrd5DXGt5nyhdSvs2Y+wSOzouMP/962EVYgF+395HbnDdGeqtMu05tkzJdFrk60NRnikqcqfVHy3WeV8ACASJeGtFrntP/kapjCLW5KDRXqu/Ea1pVviyRbTicieBLJw1jzDDcEei/zJtcR4kj2537swevLNCkc6T03vr35HgYBCLFjFOgnXZccgT49EmNC3HRqNBewtnRPoURG9/Wur7G7phHkZk/UuhBBaLM+VExjy8mQ9vLhW4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(7416014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3BENGRhM0MwWHJHcDRiQWpPNWU2dWp6dkRRK2NWSEkyN09xRjJnUWVWVHdV?=
 =?utf-8?B?TnV5YkNaSVRSdVZXTXdxdVE4ZCtEWmZqTW5XcjI5U2tNNlNvaGp3YzM0YW84?=
 =?utf-8?B?YW9KU0ZyTlVqMnpvam1ONndpZm1WWGh0U0hsZS80MVhMNVJKYSthcDROUXBm?=
 =?utf-8?B?VEVrYkpLVHprbFF6L0lDTVc4ZmNQbXFOZVJrbmFPYzhKcUp6aGd4b2hvQXNr?=
 =?utf-8?B?UWhNdHU1Sk9jNjZKelRSNlZiTlRPOGU1T0FHbzJ1WGtJT0VVOHhoL2RSaFp0?=
 =?utf-8?B?MUp3eXpCOFp0amQ2bCtaMDB1SUIxajFvZExEc0dXV0ExT3A3dTN2aTVXczkw?=
 =?utf-8?B?bWR1NUxZUjZ4aUtsQVk4R25XSTlxaFpHUkFrTnBERzRQZmVkVTEvTjhneWt4?=
 =?utf-8?B?cXN0akNucEZUODNUT0ZMODBON1FlMDBqSXo3WFkrMEJ1dkxvMGttNU15c2ox?=
 =?utf-8?B?MTRSWVp0MHdMaCtCZjNIRUNCUHdJSnh3d3gzOGExZTdtQ25zM0IxNlprc2hM?=
 =?utf-8?B?TUF2RTRYbTFRQ1VYcTRoK3BnYWt6M0FLNENFcENaNUdmSXF3d0UweENhaGdC?=
 =?utf-8?B?Vk5MZEFRcDlTYnFGOVhwRG5qS1JiRG4xNmtsYkRGcEplZTdpT01lcXZhaXMy?=
 =?utf-8?B?VFlyTExpRVNWY1VyYjg3MXdUTHpmTDhpbjR3Ulk1WDY5V2FNY0JFTXJBVkp1?=
 =?utf-8?B?OG1sZmlITFlJRDB3T0g3dFFXWmVqRWdFcjZidUcwMC8vRHROekIya0t0V3k4?=
 =?utf-8?B?WWU0REhTTlRRM2R1SU5pQUNwQzRWZFdRV2xrSUFZYlFaamlSTUlORGc5UG1W?=
 =?utf-8?B?TWJSM3JIUTZRaFZVV1JEcU5INFRnVk1TZTFvOENOeHF6Q0dpaHo1TVlOTStk?=
 =?utf-8?B?U2J2aHR4VFR5dWJhY0M5amN6YmpKK2I1YmlMUmExcExMeDNmTzhDVW93YmJa?=
 =?utf-8?B?aEU1SUpteitRa01YdzI4RVVLNUZkVGx6UzNzV3llbnhjM3YyVzhveEdvaXB2?=
 =?utf-8?B?YlovNWlHeVg4THR2UllKUVJLeTBFQ1J3a2lSd3RnMWNkeGw1L21mVHltK3Ey?=
 =?utf-8?B?OGRJTkNHak1lUXBRb3IzMkxUNmhCcTNWZG9EbHlCT1pyeVBrMWFDYnBWQVMw?=
 =?utf-8?B?M2xpaU5DVkZKa2RPY0cxZkhQWU1qZThxUWRuMnhrYW5aUE1PYzdNM0RoT3Nj?=
 =?utf-8?B?YmNtLzJwOTc0UDREdzRBMVNkRWxxd3JTOWpBYnE1eW5EK2ZmT2lsSnQ1cmxu?=
 =?utf-8?B?Z1p0MkxmakYxcmw2SkxadnpuMUd2YXdKVDdBVjEwV0RSNnV0NUdXNzNKOGhS?=
 =?utf-8?B?TEprZU5pVWJVUi9EUjBrVFQ3QWlGbTVSaDZTTFk5c1JWVWVmb1hDejJJRGJw?=
 =?utf-8?B?OGVJVTBaYWd3VDVKTTlPU0tHQ3RWTUt6MGJHbmN0Y2NmZ1BuN3RabDBNTk5z?=
 =?utf-8?B?ZTd4NVFnaUtjOUJpL3VnaGt3VCtQdloxbUVCUlVHZEV6aVhpRGRJMTh2eHZX?=
 =?utf-8?B?N3YrbnErU0paK0hlVVB2YjIzUVZqWEw1dEZ4WXBGT0U0QlNJOFRWeXE4UWtk?=
 =?utf-8?B?Tk1OTzU2TkRhcUpZTmdqQWJUSC9ZM1ZMd0xkS2l0cTFhbmhWZkR6dEJFcEdw?=
 =?utf-8?B?UWZOby9kUXZKUVErMlQreGM4QkRveUlUaFZBL1JGWWFnbm5yOXlVclkxTHJz?=
 =?utf-8?B?RG5iVzMzK1FnbnVlczlBTmc4TS9rd0F2OUcvUkFqT0l1cUFOY3VqcFNvcWY1?=
 =?utf-8?B?akl6cGY4NitaT1dIR1hwZis1eW1uRXhKbTFmaHVBbjdlVFNOSzBFbW1JYXZu?=
 =?utf-8?B?NDdNVUZMQnI0Z2ZITzBydkFIZnJvZFdxTFJxbE53NmUvc05jaE4rdHNPdGdw?=
 =?utf-8?B?RUk4ZVZkd3h4K1B1bE1JWmM2ZG1oWFRzV0dWRGwwSlZvV3RNdWRtY1RlSTdt?=
 =?utf-8?B?WS9qa3FHZDNJamlmWGV0Z2V5a3VjZ0lSMndRQjVrSmhaUE10ekFaZ05kOXlP?=
 =?utf-8?B?WGV4OCtTZUhYcDJ4QmN0Y2x3dUlvbnZDckdMclp3UllxVGNudmJtRDgvc0lz?=
 =?utf-8?B?aktTdjRMTlF5L2pnVlBVSU96MUgrN2l2NUgra3BYaXdSczYrOERqL1g5UEl3?=
 =?utf-8?B?N2prYi9rV2VvSGJEanNtN3JNL2pZL0FITWZ3NHFqTitRSmxhVUhKTDBMRDdB?=
 =?utf-8?B?bFhEd2lYT0FYQXJOODJhNFpqV3IzUEUyb0ZPeTI1MSthOUZtS0N4ZTRUb3Ft?=
 =?utf-8?B?VWk2a0RPRXBmcThhNnJ3b1ZRNU1tc2hGSGNMQUFlczdaUk54QU5xN3NadEpr?=
 =?utf-8?B?Z2MyZEdFNWUvUWRuUXVPUHlld3ZoRkk5eTd5OWhLMEtpRFFPS0FJcytUYXUz?=
 =?utf-8?Q?Q1NQmMr8iSC1mxztld2LqqmTDuDmbTfbXNxJPvTsOh3jn?=
X-MS-Exchange-AntiSpam-MessageData-1: klTB6yAdbbzdMA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf165337-0032-41f7-9c38-08de835e8924
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 13:18:38.6031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ozkUJZ9VcBXwLKGE2AI5FDgPMuoQYYzKoeEG3fBjV3gQbJG/vXOOnoCcBOBl30jD1X2CpetdmoFBCCDQiHGh4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7013
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E1BB729A318
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Mar 11, 2026 at 9:39 AM JST, Joel Fernandes wrote:
> Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
> usable FB region from GSP's fbRegionInfoParams. Usable regions are those
> that are not reserved or protected.
>
> The extracted region is stored in GetGspStaticInfoReply and exposed via
> usable_fb_region() API for use by the memory subsystem.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>

This doesn't take into account the feedback I gave in [1]. In
particular, a TODO to handle the remaining regions looks important to
me.

[1] https://lore.kernel.org/all/DGRGDFASWXB7.3NAK8RRTCV88P@nvidia.com/

