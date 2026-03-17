Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBXWLYq3uWnJMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 21:20:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676322B22A3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 21:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5030110E6A2;
	Tue, 17 Mar 2026 20:20:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="lB69er1B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010056.outbound.protection.outlook.com
 [52.101.193.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A669810E433;
 Tue, 17 Mar 2026 20:20:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JxaAzUr4GzQyxx0ymAgl/bVFtYIRfegwNHkXjzyu+tO8p6Mde/UFVeVXVCNGZ+Xg+8vVHFHiZazEkItLZkTOUmiy842kCFoz1s83hIsDGmzFUFZQ++fxmJX4oog+WPRDa00Sz7g81pNKZpO8oZkj3+tdPVMKZX/ePSKm8cksZJBc4rxX0cOCO7u3jlm9LOYN8aIkQY+MbFltssayPHJlZ7itM4Iv4wtdGJ1AUP6sUt7+52nnxFdQz6aS9WueAd6xGSfMhaGroLtlXQafze4rAhn6oFe06X3T6U9s7jJxKJkrK4V+Zi3gp77mMH65FDlvRMF7sPX6bZvbmcbkXSWy6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BANHgtO5cxEU8NpdVmXMG+LwGepalU4n0kLkK+Fm+oM=;
 b=wRCDiwu1xE67QkZj/VMrwnly6F2lVHmJOE6zF5WkuKWLK4NXxhZ3qDRJEj06EBRi9+7819wZ0BiASCX7IPT6V3gnp/B4D3DBO+aHsalxlhWqmHrqx9FbrkeA7Nh1hHcoBgOIi4+1iGQdl/aUpiwTnZCUy/o07Ws6ILB4T48W7MwkvWW6LBYeDJnfunbktB6soUJ6rLI6tSOXpYp4BjZAOWO8AXuGEL3k924mr9m8z3LCyW/tGZtk3v818x/mazO8nbbqcnGVqyEr5Y1FQIM2+rCShh86dIG0OF3tZWfADuAMy4Kxt43EiXPfM+Goi7ZTJfI8zy3LAcARiL3zHf7MAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BANHgtO5cxEU8NpdVmXMG+LwGepalU4n0kLkK+Fm+oM=;
 b=lB69er1Bj4MEM1c2P2lu/R1z126DepBokbNNuB0zuuxujVRJKp4WLzFr6FnzWRNkibIEpe9s16vmwuYZehaTOUQxVNP0SUviuNH6HgKzKm5gquwekvNT2chNoQMwUcLa2HH/tCpkkfcPqdDFAG0mHYbomJK6+UyG0c2tIwIAo2wg/jS6mIE8XMbmeZSy2KdbCZQ6yNC+F3gm3kfe3rgq5w9gYTDegRM1zW2nbrBCARAU7ozK0ZOFqMesuQrkmCEtZ/MMXqNWrlV/fcS0iYQA4pA9kmKm9eX5ZtGbSTRZ0cMvA/5mR5ZKEAfNaDz6PuoygFlSoOhYpIVypIsCVh1T0w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MN0PR12MB6150.namprd12.prod.outlook.com (2603:10b6:208:3c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Tue, 17 Mar
 2026 20:18:50 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 20:18:50 +0000
Message-ID: <46986da6-8c89-475c-8561-964adaa7d034@nvidia.com>
Date: Tue, 17 Mar 2026 16:18:46 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Alex Gaynor <alex.gaynor@gmail.com>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Simona Vetter <simona@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, Nikola Djukic
 <ndjukic@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
 <20260317201710.934932-2-joelagnelf@nvidia.com>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <20260317201710.934932-2-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BLAPR03CA0148.namprd03.prod.outlook.com
 (2603:10b6:208:32e::33) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MN0PR12MB6150:EE_
X-MS-Office365-Filtering-Correlation-Id: 08692437-d204-45c3-219e-08de84626726
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|13003099007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: qYBkrwYTjmJYn6ZRI8NZrBB+CPFUJ9o2VKYxS4Pb+87Y2flnPcolwvXVOYuOj8Z4m7O4GG+WNxtTTakWYVUE9NNdTrb6tjWG7So+RG2epF/vfVUjKdl5nY+6KRDiGk9gU1E9o8DrCNZo07q6X2gzsgVB7U7d3u5XrT49aHSV/kwBO6Sas5ndqtbszwBcDZiALq13/9mI/RXr11hUaowy3gMDlgkXtL98fxAdUZ1i/BZ9FFXl9wBVakXA0pMr7vQMsto946C9AxIzJSogFJ2jHD76MRDVc+kTDfhyOemWmib+vx+u7qJfc5Sz650sTfLE6GFfsPl6VxX+jKo9T8D/HAOsBR17A9WvDidNMGcqwAB9SC1crMTEY/e/1rP2Bd9p4l6v4Cahk6hGIQPZWW1282/rzvjKJi+M0Fh4YC1CllQIhPuAL5fTF4Y3zulDOn5dEix5pUV+zuqCnWK+6TNX6X5zWA5D+XFVPMT0zsM+btXiz+t0cjxOJL1fv7r1PbOA4TstD1rWA4RamllZXssj8HNho+TnwWxItGtk8V3JY8O868CSe60wLrkucq18bUvfDobd4RgoVtGpTYlnjgbMJT39KNm7In1b181/AtwTXKzezNP1PJm5rFFSJqF/r4qWCEOpjVPaWuPxIPI5dTbZbvUM836r8O5KxyuQuyNKZVNwDWW0T8y/G88pHt7hX/IdeWjo3JMN983SW/eBCu5pbQow9IGhW2z0rPdFalZtWn4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(13003099007)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mm5nNVhqRTYwTVY4ZUVSTGc3SWFCWjAyWm5pV0pFU2o5c0VUL0ZXZUJRMlVO?=
 =?utf-8?B?UHFLekN3TXgzL2tYUHdPNSszRlFVaFlEdFJoOFp1MnhjOUJkeFliL3BaUk5S?=
 =?utf-8?B?OHY5eHZUcEpUNXdkN1NxeGIvMTYwUVhYbW1naG1pVG5hTkx1VTA1eCtJb0J4?=
 =?utf-8?B?b0dMdm51VXB5RDdFQVIrZDVLT2ZQVC9TUFRZSzhiVUhjQ3FGcktJUUM1cEt1?=
 =?utf-8?B?Y055Z3lKdG51YkdNQk8wbEpVK0hRVS8vNmVLTTRDVCt6MVN3cWw5THBUTTJk?=
 =?utf-8?B?NGtLMUtvbGZsd0dCTjBhK2Q4anpKbEpTUnZwTnJLcHgweW1nN3M3b001aTVN?=
 =?utf-8?B?M2hhcVV1UkdMWDJjQ2ZrcHhmODNpRGV2S2c0bTRYeVowZjZaT0ZGRm5qSFEr?=
 =?utf-8?B?MHR4cTgvU3pWWVpDSER0dSswRW5OUDR0a0NKaitDTS9IeUxrTlBuSmtEd3Bv?=
 =?utf-8?B?L01jdS9EbUxEYUFzVU5wcUtOemVVeGRoWE9sUG5NL2czZk4wcWtScGg0UWJD?=
 =?utf-8?B?UzQ3eTRDb3hlOFBKK3dZQ0w1TC8wM2JGcnVLL0w0K053UkpwazluWitaSGVv?=
 =?utf-8?B?R1IvZDd1U1pzNlNFKy9CRFY3M2FyampjeS9YRXdYbGxFY0tBa29XUEFjdG0v?=
 =?utf-8?B?cE53djhFaXBHV2kzREpIOVY1L1A3ZGxPK1ZONG5WWHdOY3VDQWFKTW8rZlYv?=
 =?utf-8?B?bWI4emJKeUlLNFRFbTlqZXhwVVhLbytwb1VJM0hUenU4YnMrWE85SklWZkhk?=
 =?utf-8?B?OW05OEV3WXQ1TXhPT0owRTRkOFQ5b1Y2SUFSWlBvZkM1L3FXK09zaGtVdXBY?=
 =?utf-8?B?MXBtcnhFd2pvSTlSZ2xhVXNEckJKRTl2djBCWWZKOVRPVUJnbWkvY3lZK0VR?=
 =?utf-8?B?QklDc2x3alp6MHg4ZXI3TGI3QnpxMTByK3QxTU9LbFMycGE0bWU0c1N2N3VX?=
 =?utf-8?B?ZS9CTWt3bElXY2phZ3ZxM2N4Tm9RQVQxem56VGlVLzJDcUNWN1kyOEREaE1H?=
 =?utf-8?B?L0srWEo3UXhUaUlBRWJPY1NmNWdVYnJDd2g5N3VESlZWZ3FXcTlYVjlxYW1r?=
 =?utf-8?B?L0s1VDVScmZKTEpwcjVLa1RzTEd3Vzl4ZmszUU9KWXVBT1MvOTdad085TzhC?=
 =?utf-8?B?c3luaEdVTmtsRW5MM3BYbStoS0VpQ2NzRXRjK2VpNFgxa3RENXNnYnY2THFQ?=
 =?utf-8?B?WkpPaU9aZlRSeW1PckxCVWxIQmxBTGNic1diclRtYkkrQitPZ3hjNEVuUEQ1?=
 =?utf-8?B?MTc3QnVDeUlhN1VoSndwTU5NNVZYZGU2UkZqYXFFbUk2c1Y1d3RPSUdWb3Ey?=
 =?utf-8?B?ODJjTHZoYU5lakFxRjc4MVhEZHhvaVM3SUxmSmZUTDBpMFVPS3Z2dnZXeEJm?=
 =?utf-8?B?SkdtVDBRQmVlblBhOFlnTFZYcUkxMW14bGJBYnFFbWk2d1dXRkZzSE5zb1g4?=
 =?utf-8?B?cXpmTDBMaDFFTURZTUtNQmFhM2xqY3d2a3phZjBGTjY2TzdBWVhtM1loQldz?=
 =?utf-8?B?RTlxWGJjTVBNM1ROMjVHVnlIR1g5OVFVMndEdVpIclVqVFFab0hIZ3lUQUFJ?=
 =?utf-8?B?ZkM3c3VaeHg2ZkdsNC8zOVRTd3k4bVA5ejd2RFBvRk4yVW5nVlRmMVE0VVRj?=
 =?utf-8?B?amZZRkZGOHRYSEYrZGN0VGNlRm44WFdrQTBpRTJNT1MwTGxTZHBBRDVnU0x4?=
 =?utf-8?B?a3dabzhxL2pDcFVvbnRBYUZlK2FrYmtWbjF6WllJSmxseFRHK0I5RFQrYzRq?=
 =?utf-8?B?R1FrdHh4UHhrNDl3MmRRK2xpdFkrRU5CRlV5MkY3bTAxTFZ1SisyYmpnTjVV?=
 =?utf-8?B?YTdxOVZ3TFBhbWxLc0dZaW5hb3lwNTZGclVyTlk0VjdZYklaVHNURWxJWlZp?=
 =?utf-8?B?RitKVWxxeE9xMGJ5ODF6S1ZKUFBMS1RiNHhjSHZuTEhxUDNuSW9lK0VHUXdt?=
 =?utf-8?B?MlAzSHpqZDZyNGNHd001Z3M3cnEvbXBIN0Q5ZXYvWW1naURoblVMd2RTZTRS?=
 =?utf-8?B?WCt6NUIyWkg1d0R6clBhK1NXa1B3US9sNHQ3VjNBZENKd3BFRVJXR1dMMHk2?=
 =?utf-8?B?Rm8zajJtRTBNUHNGY0ZtNWZwaDZ3WnFkV25uSWRvYjFROVYzOW80MWJQQ1Ro?=
 =?utf-8?B?YjVhMnZaVFF1SFVrQkdHSXU5b0d4SzdPSGVVbHRTUjFpamEvZENJTHVGWWpR?=
 =?utf-8?B?SG84dDdZbElLOFo0TnQvN1laU256MFpEbzVpaDNGUmRPZjExd2NiMGhnS1N2?=
 =?utf-8?B?WGViL3FHRzd0akpmdUFNVTgzc1pROG80d1MwSmFaTHBESm5GNG5Kd2N4bHNU?=
 =?utf-8?B?Ujk4RVMvMCthcUMxNEZHUjRjMzV2aWJVL0ZEc2pjeWRCK1MyOG8xQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08692437-d204-45c3-219e-08de84626726
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 20:18:50.7353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EmUOkOspKx+/GMRFEJykELxvKNI30taqpF6jp794zw9xvCCodDMn8MmCm9GIdvsI8dmZqC/pFZBLAGlJnxSD8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6150
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
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[53];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid,collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,garyguo.net:email]
X-Rspamd-Queue-Id: 676322B22A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/2026 4:17 PM, Joel Fernandes wrote:
> Add a new module `kernel::interop::list` for working with C's doubly
> circular linked lists. Provide low-level iteration over list nodes.
> 
> Typed iteration over actual items is provided with a `clist_create`
> macro to assist in creation of the `CList` type.
> 
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
> Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
> Acked-by: Alexandre Courbot <acourbot@nvidia.com>
> Acked-by: Gary Guo <gary@garyguo.net>
> Acked-by: Miguel Ojeda <ojeda@kernel.org>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  MAINTAINERS                 |   8 +
>  rust/helpers/helpers.c      |   1 +
>  rust/helpers/list.c         |  17 ++
>  rust/kernel/interop.rs      |   9 +
>  rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
>  rust/kernel/lib.rs          |   2 +
>  6 files changed, 379 insertions(+)
>  create mode 100644 rust/helpers/list.c
>  create mode 100644 rust/kernel/interop.rs
>  create mode 100644 rust/kernel/interop/list.rs
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4bd6b538a51f..e847099efcc2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linux.git alloc-next
>  F:	rust/kernel/alloc.rs
>  F:	rust/kernel/alloc/
>  
> +RUST [INTEROP]
> +M:	Joel Fernandes <joelagnelf@nvidia.com>
> +M:	Alexandre Courbot <acourbot@nvidia.com>
> +L:	rust-for-linux@vger.kernel.org
> +S:	Maintained
> +T:	git https://github.com/Rust-for-Linux/linux.git interop-next
> +F:	rust/kernel/interop/

Sorry, I forgot to add an additional F: for the rust/kernel/interop.rs file.
Danilo/Miguel, do you mind adding this when applying?

thanks,

--
Joel Fernandes




> +
>  RUST [NUM]
>  M:	Alexandre Courbot <acourbot@nvidia.com>
>  R:	Yury Norov <yury.norov@gmail.com>
> diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
> index a3c42e51f00a..724fcb8240ac 100644
> --- a/rust/helpers/helpers.c
> +++ b/rust/helpers/helpers.c
> @@ -35,6 +35,7 @@
>  #include "io.c"
>  #include "jump_label.c"
>  #include "kunit.c"
> +#include "list.c"
>  #include "maple_tree.c"
>  #include "mm.c"
>  #include "mutex.c"
> diff --git a/rust/helpers/list.c b/rust/helpers/list.c
> new file mode 100644
> index 000000000000..18095a5593c5
> --- /dev/null
> +++ b/rust/helpers/list.c
> @@ -0,0 +1,17 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/*
> + * Helpers for C circular doubly linked list implementation.
> + */
> +
> +#include <linux/list.h>
> +
> +__rust_helper void rust_helper_INIT_LIST_HEAD(struct list_head *list)
> +{
> +	INIT_LIST_HEAD(list);
> +}
> +
> +__rust_helper void rust_helper_list_add_tail(struct list_head *new, struct list_head *head)
> +{
> +	list_add_tail(new, head);
> +}
> diff --git a/rust/kernel/interop.rs b/rust/kernel/interop.rs
> new file mode 100644
> index 000000000000..b88140cf76dc
> --- /dev/null
> +++ b/rust/kernel/interop.rs
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! Infrastructure for interfacing Rust code with C kernel subsystems.
> +//!
> +//! This module is intended for low-level, unsafe Rust infrastructure code
> +//! that interoperates between Rust and C. It is NOT for use directly in
> +//! Rust drivers.
> +
> +pub mod list;
> diff --git a/rust/kernel/interop/list.rs b/rust/kernel/interop/list.rs
> new file mode 100644
> index 000000000000..328f6b0de2ce
> --- /dev/null
> +++ b/rust/kernel/interop/list.rs
> @@ -0,0 +1,342 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! Rust interface for C doubly circular intrusive linked lists.
> +//!
> +//! This module provides Rust abstractions for iterating over C `list_head`-based
> +//! linked lists. It should only be used for cases where C and Rust code share
> +//! direct access to the same linked list through a C interop interface.
> +//!
> +//! Note: This *must not* be used by Rust components that just need a linked list
> +//! primitive. Use [`kernel::list::List`] instead.
> +//!
> +//! # Examples
> +//!
> +//! ```
> +//! use kernel::{
> +//!     bindings,
> +//!     clist_create,
> +//!     types::Opaque,
> +//! };
> +//! # // Create test list with values (0, 10, 20) - normally done by C code but it is
> +//! # // emulated here for doctests using the C bindings.
> +//! # use core::mem::MaybeUninit;
> +//! #
> +//! # /// C struct with embedded `list_head` (typically will be allocated by C code).
> +//! # #[repr(C)]
> +//! # pub struct SampleItemC {
> +//! #     pub value: i32,
> +//! #     pub link: bindings::list_head,
> +//! # }
> +//! #
> +//! # let mut head = MaybeUninit::<bindings::list_head>::uninit();
> +//! #
> +//! # let head = head.as_mut_ptr();
> +//! # // SAFETY: `head` and all the items are test objects allocated in this scope.
> +//! # unsafe { bindings::INIT_LIST_HEAD(head) };
> +//! #
> +//! # let mut items = [
> +//! #     MaybeUninit::<SampleItemC>::uninit(),
> +//! #     MaybeUninit::<SampleItemC>::uninit(),
> +//! #     MaybeUninit::<SampleItemC>::uninit(),
> +//! # ];
> +//! #
> +//! # for (i, item) in items.iter_mut().enumerate() {
> +//! #     let ptr = item.as_mut_ptr();
> +//! #     // SAFETY: `ptr` points to a valid `MaybeUninit<SampleItemC>`.
> +//! #     unsafe { (*ptr).value = i as i32 * 10 };
> +//! #     // SAFETY: `&raw mut` creates a pointer valid for `INIT_LIST_HEAD`.
> +//! #     unsafe { bindings::INIT_LIST_HEAD(&raw mut (*ptr).link) };
> +//! #     // SAFETY: `link` was just initialized and `head` is a valid list head.
> +//! #     unsafe { bindings::list_add_tail(&mut (*ptr).link, head) };
> +//! # }
> +//!
> +//! //
> +//! /// Rust wrapper for the C struct.
> +//! ///
> +//! /// The list item struct in this example is defined in C code as:
> +//! ///
> +//! /// ```c
> +//! /// struct SampleItemC {
> +//! ///     int value;
> +//! ///     struct list_head link;
> +//! /// };
> +//! /// ```
> +//! #[repr(transparent)]
> +//! pub struct Item(Opaque<SampleItemC>);
> +//!
> +//! impl Item {
> +//!     pub fn value(&self) -> i32 {
> +//!         // SAFETY: `Item` has same layout as `SampleItemC`.
> +//!         unsafe { (*self.0.get()).value }
> +//!     }
> +//! }
> +//!
> +//!
> +//! // Create typed [`CList`] from sentinel head.
> +//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
> +//! // embedded `link` field, and `Item` is `#[repr(transparent)]` over `SampleItemC`.
> +//! let list = clist_create!(unsafe { head, Item, SampleItemC, link });
> +//!
> +//! // Iterate directly over typed items.
> +//! let mut found_0 = false;
> +//! let mut found_10 = false;
> +//! let mut found_20 = false;
> +//!
> +//! for item in list.iter() {
> +//!     let val = item.value();
> +//!     if val == 0 { found_0 = true; }
> +//!     if val == 10 { found_10 = true; }
> +//!     if val == 20 { found_20 = true; }
> +//! }
> +//!
> +//! assert!(found_0 && found_10 && found_20);
> +//! ```
> +
> +use core::{
> +    iter::FusedIterator,
> +    marker::PhantomData, //
> +};
> +
> +use crate::{
> +    bindings,
> +    types::Opaque, //
> +};
> +
> +use pin_init::{
> +    pin_data,
> +    pin_init,
> +    PinInit, //
> +};
> +
> +/// FFI wrapper for a C `list_head` object used in intrusive linked lists.
> +///
> +/// # Invariants
> +///
> +/// - The underlying `list_head` is initialized with valid non-`NULL` `next`/`prev` pointers.
> +#[pin_data]
> +#[repr(transparent)]
> +pub struct CListHead {
> +    #[pin]
> +    inner: Opaque<bindings::list_head>,
> +}
> +
> +impl CListHead {
> +    /// Create a `&CListHead` reference from a raw `list_head` pointer.
> +    ///
> +    /// # Safety
> +    ///
> +    /// - `ptr` must be a valid pointer to an initialized `list_head` (e.g. via
> +    ///   `INIT_LIST_HEAD()`), with valid non-`NULL` `next`/`prev` pointers.
> +    /// - `ptr` must remain valid for the lifetime `'a`.
> +    /// - The list and all linked `list_head` nodes must not be modified from
> +    ///   anywhere for the lifetime `'a`, unless done so via any [`CListHead`] APIs.
> +    #[inline]
> +    pub unsafe fn from_raw<'a>(ptr: *mut bindings::list_head) -> &'a Self {
> +        // SAFETY:
> +        // - `CListHead` has same layout as `list_head`.
> +        // - `ptr` is valid and unmodified for `'a` per caller guarantees.
> +        unsafe { &*ptr.cast() }
> +    }
> +
> +    /// Get the raw `list_head` pointer.
> +    #[inline]
> +    pub fn as_raw(&self) -> *mut bindings::list_head {
> +        self.inner.get()
> +    }
> +
> +    /// Get the next [`CListHead`] in the list.
> +    #[inline]
> +    pub fn next(&self) -> &Self {
> +        let raw = self.as_raw();
> +        // SAFETY:
> +        // - `self.as_raw()` is valid and initialized per type invariants.
> +        // - The `next` pointer is valid and non-`NULL` per type invariants
> +        //   (initialized via `INIT_LIST_HEAD()` or equivalent).
> +        unsafe { Self::from_raw((*raw).next) }
> +    }
> +
> +    /// Check if this node is linked in a list (not isolated).
> +    #[inline]
> +    pub fn is_linked(&self) -> bool {
> +        let raw = self.as_raw();
> +        // SAFETY: `self.as_raw()` is valid per type invariants.
> +        unsafe { (*raw).next != raw && (*raw).prev != raw }
> +    }
> +
> +    /// Pin-initializer that initializes the list head.
> +    pub fn new() -> impl PinInit<Self> {
> +        pin_init!(Self {
> +            // SAFETY: `INIT_LIST_HEAD` initializes `slot` to a valid empty list.
> +            inner <- Opaque::ffi_init(|slot| unsafe { bindings::INIT_LIST_HEAD(slot) }),
> +        })
> +    }
> +}
> +
> +// SAFETY: `list_head` contains no thread-bound state; it only holds
> +// `next`/`prev` pointers.
> +unsafe impl Send for CListHead {}
> +
> +// SAFETY: `CListHead` can be shared among threads as modifications are
> +// not allowed at the moment.
> +unsafe impl Sync for CListHead {}
> +
> +impl PartialEq for CListHead {
> +    #[inline]
> +    fn eq(&self, other: &Self) -> bool {
> +        core::ptr::eq(self, other)
> +    }
> +}
> +
> +impl Eq for CListHead {}
> +
> +/// Low-level iterator over `list_head` nodes.
> +///
> +/// An iterator used to iterate over a C intrusive linked list (`list_head`). Caller has to
> +/// perform conversion of returned [`CListHead`] to an item (using [`container_of`] or similar).
> +///
> +/// # Invariants
> +///
> +/// `current` and `sentinel` are valid references into an initialized linked list.
> +struct CListHeadIter<'a> {
> +    /// Current position in the list.
> +    current: &'a CListHead,
> +    /// The sentinel head (used to detect end of iteration).
> +    sentinel: &'a CListHead,
> +}
> +
> +impl<'a> Iterator for CListHeadIter<'a> {
> +    type Item = &'a CListHead;
> +
> +    #[inline]
> +    fn next(&mut self) -> Option<Self::Item> {
> +        // Check if we've reached the sentinel (end of list).
> +        if self.current == self.sentinel {
> +            return None;
> +        }
> +
> +        let item = self.current;
> +        self.current = item.next();
> +        Some(item)
> +    }
> +}
> +
> +impl<'a> FusedIterator for CListHeadIter<'a> {}
> +
> +/// A typed C linked list with a sentinel head intended for FFI use-cases where
> +/// C subsystem manages a linked list that Rust code needs to read. Generally
> +/// required only for special cases.
> +///
> +/// A sentinel head [`CListHead`] represents the entire linked list and can be used
> +/// for iteration over items of type `T`, it is not associated with a specific item.
> +///
> +/// The const generic `OFFSET` specifies the byte offset of the `list_head` field within
> +/// the struct that `T` wraps.
> +///
> +/// # Invariants
> +///
> +/// - The sentinel [`CListHead`] has valid non-`NULL` `next`/`prev` pointers.
> +/// - `OFFSET` is the byte offset of the `list_head` field within the struct that `T` wraps.
> +/// - All the list's `list_head` nodes have valid non-`NULL` `next`/`prev` pointers.
> +#[repr(transparent)]
> +pub struct CList<T, const OFFSET: usize>(CListHead, PhantomData<T>);
> +
> +impl<T, const OFFSET: usize> CList<T, OFFSET> {
> +    /// Create a typed [`CList`] reference from a raw sentinel `list_head` pointer.
> +    ///
> +    /// # Safety
> +    ///
> +    /// - `ptr` must be a valid pointer to an initialized sentinel `list_head` (e.g. via
> +    ///   `INIT_LIST_HEAD()`), with valid non-`NULL` `next`/`prev` pointers.
> +    /// - `ptr` must remain valid for the lifetime `'a`.
> +    /// - The list and all linked nodes must not be concurrently modified for the lifetime `'a`.
> +    /// - The list must contain items where the `list_head` field is at byte offset `OFFSET`.
> +    /// - `T` must be `#[repr(transparent)]` over the C struct.
> +    #[inline]
> +    pub unsafe fn from_raw<'a>(ptr: *mut bindings::list_head) -> &'a Self {
> +        // SAFETY:
> +        // - `CList` has same layout as `CListHead` due to `#[repr(transparent)]`.
> +        // - Caller guarantees `ptr` is a valid, sentinel `list_head` object.
> +        unsafe { &*ptr.cast() }
> +    }
> +
> +    /// Check if the list is empty.
> +    #[inline]
> +    pub fn is_empty(&self) -> bool {
> +        !self.0.is_linked()
> +    }
> +
> +    /// Create an iterator over typed items.
> +    #[inline]
> +    pub fn iter(&self) -> CListIter<'_, T, OFFSET> {
> +        let head = &self.0;
> +        CListIter {
> +            head_iter: CListHeadIter {
> +                current: head.next(),
> +                sentinel: head,
> +            },
> +            _phantom: PhantomData,
> +        }
> +    }
> +}
> +
> +/// High-level iterator over typed list items.
> +pub struct CListIter<'a, T, const OFFSET: usize> {
> +    head_iter: CListHeadIter<'a>,
> +    _phantom: PhantomData<&'a T>,
> +}
> +
> +impl<'a, T, const OFFSET: usize> Iterator for CListIter<'a, T, OFFSET> {
> +    type Item = &'a T;
> +
> +    #[inline]
> +    fn next(&mut self) -> Option<Self::Item> {
> +        let head = self.head_iter.next()?;
> +
> +        // Convert to item using `OFFSET`.
> +        //
> +        // SAFETY: The pointer calculation is valid because `OFFSET` is derived
> +        // from `offset_of!` per type invariants.
> +        Some(unsafe { &*head.as_raw().byte_sub(OFFSET).cast::<T>() })
> +    }
> +}
> +
> +impl<'a, T, const OFFSET: usize> FusedIterator for CListIter<'a, T, OFFSET> {}
> +
> +/// Create a C doubly-circular linked list interface [`CList`] from a raw `list_head` pointer.
> +///
> +/// This macro creates a `CList<T, OFFSET>` that can iterate over items of type `$rust_type`
> +/// linked via the `$field` field in the underlying C struct `$c_type`.
> +///
> +/// # Arguments
> +///
> +/// - `$head`: Raw pointer to the sentinel `list_head` object (`*mut bindings::list_head`).
> +/// - `$rust_type`: Each item's rust wrapper type.
> +/// - `$c_type`: Each item's C struct type that contains the embedded `list_head`.
> +/// - `$field`: The name of the `list_head` field within the C struct.
> +///
> +/// # Safety
> +///
> +/// The caller must ensure:
> +///
> +/// - `$head` is a valid, initialized sentinel `list_head` (e.g. via `INIT_LIST_HEAD()`)
> +///   pointing to a list that is not concurrently modified for the lifetime of the [`CList`].
> +/// - The list contains items of type `$c_type` linked via an embedded `$field`.
> +/// - `$rust_type` is `#[repr(transparent)]` over `$c_type` or has compatible layout.
> +///
> +/// # Examples
> +///
> +/// Refer to the examples in the [`crate::interop::list`] module documentation.
> +#[macro_export]
> +macro_rules! clist_create {
> +    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) => {{
> +        // Compile-time check that field path is a `list_head`.
> +        // SAFETY: `p` is a valid pointer to `$c_type`.
> +        let _: fn(*const $c_type) -> *const $crate::bindings::list_head =
> +            |p| unsafe { &raw const (*p).$($field).+ };
> +
> +        // Calculate offset and create `CList`.
> +        const OFFSET: usize = ::core::mem::offset_of!($c_type, $($field).+);
> +        // SAFETY: The caller of this macro is responsible for ensuring safety.
> +        unsafe { $crate::interop::list::CList::<$rust_type, OFFSET>::from_raw($head) }
> +    }};
> +}
> diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
> index d93292d47420..bdcf632050ee 100644
> --- a/rust/kernel/lib.rs
> +++ b/rust/kernel/lib.rs
> @@ -29,6 +29,7 @@
>  #![feature(lint_reasons)]
>  //
>  // Stable since Rust 1.82.0.
> +#![feature(offset_of_nested)]
>  #![feature(raw_ref_op)]
>  //
>  // Stable since Rust 1.83.0.
> @@ -107,6 +108,7 @@
>  #[doc(hidden)]
>  pub mod impl_flags;
>  pub mod init;
> +pub mod interop;
>  pub mod io;
>  pub mod ioctl;
>  pub mod iommu;

-- 
Joel Fernandes

