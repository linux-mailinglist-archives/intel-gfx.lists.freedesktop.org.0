Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJxeAwhyumnRWQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 10:36:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8132B9281
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 10:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E875810E77B;
	Wed, 18 Mar 2026 09:36:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="Kn+UvlwF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010029.outbound.protection.outlook.com [52.101.46.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D0410E775;
 Wed, 18 Mar 2026 09:36:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HeXvCmIcG9vBEyPRIrktB3mZxYM8KABXcej7E8V6PNOF2B7wYuwwSbxWeZggoXp5+GyF0+1Ubz7XjEHKTdI7nCRTWLRbMITl1pJlcU0vXOFHLgQFlseowEMTlgrmmk5O41bWQIqZdJdNta3R39nVl0T7kcMre36VWlV4FKLdGMy1+hJ/8AF+joIz1Y1oyoKFQyPxOtSCAAWJAcqVY+OneXdrrT6Ej3KY2ARpCpQsbPGm08i+pjX/3Z6cC6RpicXVHpgdUif14/4lS2BMXClyOuE8Zwo9wl/o38RruzxbD7Km5TDcO//EF6vlwEnjLbl3Tquxd+JTcNkhx4Evh8fZKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WBZGeXfcT5hGu1lP9x2cAzc913fAJXkKlIkeqqZP+TE=;
 b=ylm4jLzIYiFLlQzRxozYfbISblLG6dLBy2CmHlswAylNHz8xC1sOEpOa+OREfFNKje2FKns9ZrOVIgwrifR0qb0Eb8wWPbuPsHt0PCRWtKgutNk6kcebmuRodIiN2O1sYqkosIc1ksrpV/eMPyoP/7co+Q/YVwQG1nBJtvhY9ZhmyC1A8iJi7Giv8qqCuuQhRDkCxJJlt1knk3sZis/A0WZe/hyMOpMEwl//GttAvtAnkWibbFnZE5pcfTlMHCVJ6JabbuATtvNe9vpBB9ml7m+sFlxSuz6mQjO3DndNmGEiBsuyojLkDFGFaWJ0w0Njx+GlyTAVz3POTOz/XWKkMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WBZGeXfcT5hGu1lP9x2cAzc913fAJXkKlIkeqqZP+TE=;
 b=Kn+UvlwFjh9gK1h2qXC1DxJwOZXeoaEpeeZZreh2Buvr/5WVJs1Ri1p5LHGP5kpfPxl9HYWOI0aXw/ow4Pi/A/DE5F1p56Xd64fdBTDBSgBGF7AMbPkRoJS70/ZjE8XmeOXkMf7iTqRcRv7DsuomBXQwxTplELIeypOXXQYFZJA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BY5PR12MB4273.namprd12.prod.outlook.com (2603:10b6:a03:212::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 09:36:01 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9723.016; Wed, 18 Mar 2026
 09:36:01 +0000
Message-ID: <b5e88f9d-eb6b-4ad8-b40f-46d1a61979c9@amd.com>
Date: Wed, 18 Mar 2026 10:35:36 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 2/2] MAINTAINERS: gpu: buddy: Update reviewer
To: Joel Fernandes <joelagnelf@nvidia.com>, linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260317220323.1909618-1-joelagnelf@nvidia.com>
 <20260317220323.1909618-3-joelagnelf@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260317220323.1909618-3-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0058.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BY5PR12MB4273:EE_
X-MS-Office365-Filtering-Correlation-Id: 45fa78bf-2c75-4232-bca4-08de84d1c434
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|1800799024|376014|7053199007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: zhPV8t2V5Y5qEse/lQae6yHBsPqE4arh7JJgqtFuvuEC+Ka1oYZGolq+6A9RkHgANCMBEYFgmIW2quU8GJKWrbmbBzIG6YKKN7ZUX5eUvjWtDADnDB0nb7WRYEfifRET9UUAU5cqmAOCTDy8ll71G8eotHjiCw5rXKN7RZzvi4N1T5Vb5R5/lLVFaLmXmFwZM5slnfxkE0qWs7jxdfrzsv5niP88Se72b1FEr0wiMmOSCj0q/p9iXNwLRoal0K/TruOv0lstMgdQZLvo0PWWQnBYKUpFSdloFf88B/l9PHV55AmSE3iPAEUPd5ZrWLdrveejLYFzj7d9pORyzPwrt0fgtoNy7UW/xkNEManXn6Mpid+id2t12Nr/ssigQM8WVQqjXnE0xO8RyUDIZQDqKqfIfXqQLYiJtHGkthFJBwFXmm6c4CefqoyXIH9Fx86k/vHFugbvw8ZGO7W/Qyk8UdtOzt1tGHmnMJIKqzBvuswdLTkVYr07+jwnOEWP+Lw8kfVtWoCmhXEntnCCWGLVU1bCefBH2BdoG+7Cn1fpOVOdCDQMSzKsJthHyQTyt3gnkiAAMdAnJZH/O1RGY9AXZGwJ0Q0vJ6dRLChmf6SCCqdK65SBE4sA7UlQUiIQ2Cu/RYj4BBLfKw522bxxSYVTtqiLYxaV+wrBxY48kChwSNsMGjFGotjONn6WEgKpiwjj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014)(7053199007)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUFlZE1SREVyR0VsZ3lDcSt6b3pWejNqck53dXltZ2gzbThiK1FSVDlVYTJO?=
 =?utf-8?B?WFppcjVNKzV4ek9idC80VDBmQWtWbW81RHVXME5ubHRHUm1OaUM0UGVrTTB6?=
 =?utf-8?B?d3N5Y3VDSWtaZW11SkFjMkNKMVd6K1E5RkdBeExDdXR4UlBxWVFMd1h0MjZi?=
 =?utf-8?B?THFtRnM4QzBBNXhtTFVQTjZIdFozRFRGS2p6YWlLOHZNeURnbHROa0p6aXdL?=
 =?utf-8?B?WWhnRW5ScW9qMjRONGJDNHFWSDkvYm52MEdDNEVrYUFVZ2FWYUwrMWdMT0h0?=
 =?utf-8?B?ckpZZG9WZjZvOG5ZbW9LanI5cmdCaUt1WVk5YmpUcWFRajdCd1BGNjRqbkg5?=
 =?utf-8?B?dUVtbFJSa01SandpQ1hqdDFoN3JYVnZhcmI5clpRa3JKbmQwb2ZLSW82dWI5?=
 =?utf-8?B?NkFpOGpnK21CYnd0RWVsdVVFanpYejJIbEVFOW1id3p5Ti9SWEo3NHpkcTJ6?=
 =?utf-8?B?dzlZcmd0MFVoQzdacyt3VzRjV1E3WWRDcE1kanBVZWcwdk0xVlJKb0V4Wmp5?=
 =?utf-8?B?ZlBxcnllcjlaUFFiQUp6WmtEYnl2NjJSdWt1L2VwMEtxWGRidlMrSGc2STFa?=
 =?utf-8?B?R1JoSGtwZldBNzN4Vi9ZcEphc3p2aGtIQjVOVmQrUW1SVmdpN2pYbHZKemVa?=
 =?utf-8?B?SnY2Qmw4ZHpaaFZ3b0xmZllxMDNRQklVYW1vUm1XNTlRa2FzT3BhQmlCVUto?=
 =?utf-8?B?TXh3WTU2QVR3aS9IVmRoK21sU1lPK0t1Y0VYMitpSEVDVTFYbG1vZFVhTnpi?=
 =?utf-8?B?ZzhKMEt0Wm1Va3FlWkVucnF0SFBIK2pZK2hwcnNEL2JDTGtxYXZURGNIK1FV?=
 =?utf-8?B?ZWt5YzcyMkEyUURFNHp4U2JCSVBJdWlLR01rODFuVnVsSHZMUnNqMkdEeFhG?=
 =?utf-8?B?NFMvbm9lQ05IelZoTzFnNHBockZXNmVjTExIOUZBRHZwRzZWdFFQZ3V5akhX?=
 =?utf-8?B?eW1Cd2Y4WTNhbHk4cEhKY3VQTUp2SUN3SkNZbUVxd3J0SE5XWWNUcHlpZUtV?=
 =?utf-8?B?UWlBRnJvM1ZtcEJaMDJkdEQyTHUreGxzODZZcm1FNlY2eFFMWEdiT0d3NCsr?=
 =?utf-8?B?bG9oRktEbStneVNMcytya3NOVFNBajVxekVZMHJ0TlVMTW0rSHRRZ3lVTkdB?=
 =?utf-8?B?RlNKZjNoRFJuSGhiMlFOeTdNQnFTaDhVeEZ6bmd2MzU4L2tLc0YwYVhTVy9P?=
 =?utf-8?B?ZTVqWW5VVnBaS0hGRE1MUnNML09VOWo4bEhFSjZBMS82eXRJdFNqdlczTGdQ?=
 =?utf-8?B?Zk4xNldJcUxiSEZsY1Rtb0dqVkVpbkpSTkhFMDdzZ0lHMy85azZYVk9pZS9R?=
 =?utf-8?B?NXZTcVNvZmowQktocHpXbDNXQ1BEVGdRUEdtd1hvb3hGalNacEZpN2V4L09p?=
 =?utf-8?B?Sk9FVFE2NW9CN255S2h3eUNCTWdHeTNnbyt6eEJ2YWV6VE5zVEx3VHZ5bGFH?=
 =?utf-8?B?UWhhZStYZVliamhBRFUwcW1tQjlJRG5YR09IaENRQzlGaVFDOHNBeUh4bTVY?=
 =?utf-8?B?UFFTQngvK3pWU0Zkc2dYZkNKVXgvRnRGZ2lDWmYyRk8yN1ZKRlpwV2gyc2d5?=
 =?utf-8?B?K29BYVBHZlQyUXNhL01zbnBOREtvMFhOa3prTkRkNTliWGFSekw1UGlzOWdt?=
 =?utf-8?B?dE5YNmFpY1VCdU9tdE9uWHBjV1owaW01MzNzYWdSVVkxUWtMZEJxSGRTcjcz?=
 =?utf-8?B?cDdEOVgzd0Fjc1huMndkVHJSdVZaNzNONTBXMVNYN0RjM3RBbjVxNFJSdHM5?=
 =?utf-8?B?L0dXclg0bjBpTXh6TGh4b0JYMEFLL3NqenZvSjM0R2hNQ2E4MzQ2cDdYZmN0?=
 =?utf-8?B?UVIrbHJBa3NWZXJDbDg3c3lUeFE2YnpKZ2tIYmVqUG1aSUVudnFWdFRsaEhU?=
 =?utf-8?B?VEgxbitaVlNFdm9rTUkrRE1UZm9JZHVzTFNON2kyblhoVE1sSzBSU05ncDFR?=
 =?utf-8?B?VklCOUhqRllQR2tYYkxoSVdoWFJ2Vi94WStDMFBtN0hKQzdJUnh6ZElGN1Fj?=
 =?utf-8?B?QVlwb2lRTzF6Q01zWDVxV3RvQ09DanJMNzBybnR0UjBHYmY2bnIrU2xGYkJP?=
 =?utf-8?B?ZWZVdS9zdml3ak1PS0JRZlJydmxKRE05VGNJcjJGbFkvUjV1Vzl2eXJKQjZu?=
 =?utf-8?B?ZDQ4NW9heERVa3BZUnI2ZllDSGdWOTNOOEF0TTEzdS9uYXgvR3JOakhQeDZ1?=
 =?utf-8?B?WXFVc0x4YmFKZWU4Y0RCSkxVSDJUV0lmWUFhMFZ5cHpQc3NtRnR6dmRnRkFp?=
 =?utf-8?B?dGZDdVcxME40OEdDaDRMR2FQcFlDbVN3bUN4YVA0L2QxOVJzWk5mNnY1YXJj?=
 =?utf-8?Q?7odK+yum9/OGvZAkLY?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45fa78bf-2c75-4232-bca4-08de84d1c434
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2026 09:36:01.0257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AmzxZDkGDawqzNevS4bSzNuXc5vmJFZfojU8MRVRCdH0VV18LQo3fZ3g08n8inma
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4273
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
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
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
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,lists.freedesktop.org:email,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:dkim,amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: 7F8132B9281
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 23:03, Joel Fernandes wrote:
> Christian Koenig mentioned he'd like to step down from the reviewer
> role for the GPU buddy allocator. Joel Fernandes is stepping in as
> reviewer with agreement from Matthew Auld and Arun Pravin.
> 
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>

Acked-by: Christian König <christian.koenig@amd.com>

> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cd9505d3be60..3353cbf98be1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8946,7 +8946,7 @@ F:	include/drm/ttm/
>  GPU BUDDY ALLOCATOR
>  M:	Matthew Auld <matthew.auld@intel.com>
>  M:	Arun Pravin <arunpravin.paneerselvam@amd.com>
> -R:	Christian Koenig <christian.koenig@amd.com>
> +R:	Joel Fernandes <joelagnelf@nvidia.com>
>  L:	dri-devel@lists.freedesktop.org
>  S:	Maintained
>  T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git

