Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMZRCLKJ52kU9wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:29:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7298943C06A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F218210E8C0;
	Tue, 21 Apr 2026 14:29:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="nf9zb4UK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011070.outbound.protection.outlook.com [52.101.62.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB5810E8BB;
 Tue, 21 Apr 2026 14:29:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JNjF+hFlGhftrijliWfyzvP4x8BlwneYlNGdac0hwitH4PkA5DVBMmhIsuWmRhmAVwglh/2WruGByHVRcJ//lHTNYmZQx4Gi4kEuWs5nsc9/abyoyYO4PUsE19peHsMaBoVyWrPuFnEWy1ZSI2bSdbybSjs2LhUVLiiirqTF1SqSb2xsIpL800FdjtiGzZqJuPeg2Ii6tdWYQWqVG6NXb5AUbsqLOJs0fEzsl3812+QiyGnDvZDQZYenD5sk6N13zFiXdxhtXWjje9teviY3d9Glxnd/2fhiM3tRh0+Zw5TgXU+mFsG3DLhq7khp8FDjm2ErViBq3p/AeF+H7W8PAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8OYHlnl2E2VStFDK5AXUEfZ4S6tcsTqHpWr6ZfmD36A=;
 b=YNRwhVs6AZ+PrLbZzJTFGOQEtBPgvNd7ZPGZer4AnH6cWF/2NrLtoz6PRrljF4JXahLeZukZ6W5tcNTmWm2ex0Azx4t7yjLv2dGL9Y/8bOB0VuqYgFxwfmsfrXTKx6OS4ARJT1MV+3E3BTBMWhqeF5pk1K/hgYNKPRdla8KLCqxgqiDGKgdR4Ay41r6G1TBbqLeO/dkgpDTRJ7nO9f5PDkUHmVsAFojCstjaBD7TPq4r83BQDPovsWK4GQQJk65iJWXIOOJqcPST2uwvZG3pxnUGJigVON2Cut+TUgssczmYAsmKYxg4hNJZkO0NBeZibY5jDuF5NX44JzRc2NEb8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8OYHlnl2E2VStFDK5AXUEfZ4S6tcsTqHpWr6ZfmD36A=;
 b=nf9zb4UKy8FmOPQuNMDPAx0rWiGoDc5SIi8g1Dl5RtKwWMHfifHWCqe6f7gd7SUAnZCxNv1uEozFvrAAXJNwsquceWxUJWqlNo1ftu0iTzZmouxtqCKS3TDG/nXrrKm1nrRNxKQucpPs2Mhqh4zkvd5JL7Yu2DFxcFC3wYEqTZP7HBeNivvrhiqhTDIm9+v7LPBKhRnuD3nZkB2+jUAFbI0sdwjj6kG9qCmAxxTyxfZrYH93+QQhVk7LnN+mR+5heKxLSnMxGLkSkyY74AgZj3Bsa8dyWuDUvxYJIzy99wlNkbk2xf8V9Ks7NxQjByaYIJJeNkIXHgVwJ8NJZ65G3g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CY5PR12MB6527.namprd12.prod.outlook.com (2603:10b6:930:30::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.16; Tue, 21 Apr 2026 14:28:56 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9846.016; Tue, 21 Apr 2026
 14:28:56 +0000
Message-ID: <fde183e1-0f89-4615-aa7c-9c91222ef071@nvidia.com>
Date: Tue, 21 Apr 2026 10:28:48 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 07/20] gpu: nova-core: mm: Add TLB flush support
To: Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin
 <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Dave Airlie <airlied@redhat.com>,
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
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
 <20260415210548.3776595-7-joelagnelf@nvidia.com>
 <20260416212312.GA667928@joelbox2> <DHUWPQX14ZGZ.26BV7GQCJDZQI@kernel.org>
 <1e3c423e-1cf5-48b1-b012-c4af0eb6b95f@nvidia.com>
 <DHUY5IGHGE49.Z2UVYJ23KX2Y@kernel.org>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <DHUY5IGHGE49.Z2UVYJ23KX2Y@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BN1PR13CA0008.namprd13.prod.outlook.com
 (2603:10b6:408:e2::13) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CY5PR12MB6527:EE_
X-MS-Office365-Filtering-Correlation-Id: a6319977-8294-49a4-d99b-08de9fb251cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|1800799024|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: mJX009pVnTlHnCwApHSi3TZbtgrT/rVjyVy7mhcDqcJuyIs3HL+XBRu42p76rNYDPHNAaw5K7SClm3NE2z6nXh5YKlWHCYPNMSE0WCkbsVsSOmgSpvY+jTLnxB2n0KyltT6vl7nogSobKPkKaTQni7FHrwMSj7dKPQpRAPP5/1PLTj6KJPSSNB7BrUC0iUh0wkWDy3eJurG+QkbuLGKbOPanEqLdb4sGBG5uG2C7KmehFsdV2QQtcKXtNYVL8PrjvgJsMZh4h6JMPEzXB1SAMYOH/yEKxNJCyujgkCsanwzCBypNq9YxO3sty98+zhZtDSBD5v3jewTxNSw8zDJHxQDCfB7yUjSfZPEyO9cN9D8FLdkad6njZcWNoHow3LGMlYGBdMfXzt+8rkCzuWAjk4Y0Mg0Ahsi3w9zEWa26IPDR1Dlz9PoDMZNrfbzrNXeNiNVDkt6rGPwL1lekzAIvZsDBPugH4LM3oc7b20WFTQdD20ljg5AaBPvrxYoc5mTpQMu75Rq14BjN7M4Xp9CAaqnce20rzdOHlPRwGX/I+AiV0jt1wkmiG51oiZmbiFBfOCbnXwYvgzO5wQ1mOpKmksjzZdLSplyaOKPZ06ySgOZOcez6+g4wn5spXHPZD/mSfLVyr6jjjR5IEQKeh+p6g6LRZN8x/EFEI5lBxHSKhR3rpIEjf91sW+6v3Yg8Xs3nNmsy8CVRZIOEEWKjnrDOA/6KM0zlcgz9ikf7IOD/h5o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXdGSFlEMWpndTJ4V3hMcy9HMUZ0TFRlTVArNkRtUERmVXpmRWlxNnZ2d2l1?=
 =?utf-8?B?RjJLcjlCN0JhRnpjYUJTM0F1ZDh5b1duV0NtdndyTXNRdjhZbHpOUlJiVG9V?=
 =?utf-8?B?WDVhTHFwWkRxNVBuTkRGdUFFS2VPWEROTjFBMWVCeEFsYlJZWmwyVDJCY0Fr?=
 =?utf-8?B?OEY5Z1MxRHB5UEl2ZXNMYUhQYmVrOWZJajcxeFROQUowQ3EwdnMvYzV4M0Iw?=
 =?utf-8?B?UnB6ZTB0RHhIajhWaEdQaVNCRUU3WDQ5NlE1TXdicGZWdGFNc0QvN3ZaYzhy?=
 =?utf-8?B?SnZ6T2hpUmxnKzJJWGQ1TmdWVmRoYWxjQ1VFNkhBU3JreWFTWGE3c1BBRU5D?=
 =?utf-8?B?OHRYa21INXpyUTVseDZLRHdERGZKbE0xTUhQMkV4NHZjcDhEeEJpeE95U25O?=
 =?utf-8?B?Wi9nV2xSL01ibUxBRnZVeGtIMnUybEdKYWFDUExkMjhMQTgrQ0tGeWFuOTlo?=
 =?utf-8?B?Z2Y5Z0JIcXowdzlocFpMWXJHbldoWHBQK2o0bnR0b0JiY3ZyWnMrVXdHQmV0?=
 =?utf-8?B?czBlbHBSNzh6TGR4bEpxLzhSQngxcHJhcDc0d0FNbERFZTg2NXJ2K3FkQW02?=
 =?utf-8?B?WU5Pc0JKNHJORGxpRnVGYkp0UlIyclppNitxSzJkU0xFZFVGYTBTU1lobmxq?=
 =?utf-8?B?c1pYUUtxbWdJUU1qVkxON01HcHRiNHNkajZhNjFETnpueFlSTHlMS0lUWUh6?=
 =?utf-8?B?Q1JCMGdLZkt6Q0syUnFnTHpBMTVzVStXSFVwNEpndURaWDdDMWdoMzEvcHFy?=
 =?utf-8?B?WGpha3crTjVueS9PSjltRWJQSFFBcEExQ216SHhIMHo5dGpORWhKM2xBeXJa?=
 =?utf-8?B?YkZXK21QQkh2WXZLT3NPaWxKQzJLa0Zjb0tlUUlNU1MrY0txZjVRT3UySkhw?=
 =?utf-8?B?WHVJMTdXNUszKzdoUDJ2aHFVRmpXRGh4WHd1S2lQUnQ4N2JyVjJvTFZhd2Jo?=
 =?utf-8?B?NDJUdGdpNEpuQS9xeHRzR1hFVlQ3QVl4azNpdExKVmU1c0RCWGU3SEE4djAy?=
 =?utf-8?B?VWYxbjY3ZjlyeGNORi9jM2NlWi8wTTVtY05sSlB0czRzOURac0NCZnViQ0dq?=
 =?utf-8?B?L1JkYVhVUUFLeTZDMkpFbkNaMWJEWHhBTXBNZ2p3V1ZnOFlvNldYYU9Ta0lK?=
 =?utf-8?B?OWxXMVc2bGpLSHlHc3ZXUW91V1lIMDB6OXFDRjJhTTk1MXFoNWxaVWpnQk9V?=
 =?utf-8?B?ZjUwbHU5d0VvTkhsN0ZCTlRFempBem9YeFJSeFBwQjUrZ25MallXWjNwcjJY?=
 =?utf-8?B?MnVPMFFhMlpDYXR2ZzZTNys1eXRXZWFSaVlIWXNCMlNEa3RMWGZ1NGRWcXZt?=
 =?utf-8?B?WkVWaHdSMGFWZkdoNm1oVU9rWG5wVkJmQjBnNE9LVjlCd2ZMOTJSdlExVGtI?=
 =?utf-8?B?WXljaG5kY0xIU2wyOUgzWDk0VG8xVmpOdGlUeXpyaUNvL1VpWWhxdlZ3TWw1?=
 =?utf-8?B?OGl0VHJnKy9ZaUtJZlo1NzNmNjIrTG1KZ0hmYzlZV0JaRlJSSkk3cnpGdnBP?=
 =?utf-8?B?Q0xsQlRDWk5kc1lyTW1JekVleEYyanE3V3duck1OZ1A4OHhidmt0c3lrbEZO?=
 =?utf-8?B?alpRUVphRkl4L1FoRmlNc2JsOFYySDcyKy9ZYXY2S2c4YnJVZnBHZkhEdjBD?=
 =?utf-8?B?aHpiYTVhUEN2TXNYb0RPNXMrR1c5Nkh1RGg5ckdxc2UrL3pNN1NPdFZKTjRX?=
 =?utf-8?B?Z21iVjRmdWIxbU1SUkM3YXNPRUNLNXBQdFJjUVF1Uk1FajFGRkh4MHUwemhS?=
 =?utf-8?B?K1lRc3VOTXpTRnRES1l2dzVxb0ozazhiZzRXYnF3ZzRYSW1vY2NwdU1kenJ0?=
 =?utf-8?B?cHh1MFBXN3NRK0NJeWxLd3R1N0xUUGpPY0ZtRnlrY09ZckMxV0N4b1k1V1pu?=
 =?utf-8?B?S2c2aHRPUGVjcXBnYUZKcnM2N1hFc1NmWmZVTmVVLzA5MmlYNnNtQUkvYVkv?=
 =?utf-8?B?VUhZQ3J0SzVhRXNlZTY2K1d1SENCd25GMWRBVGozckV3VTVaVDJwYzBpTmh4?=
 =?utf-8?B?TllWS09HRnVNdnovb3NMN09reGNXK05TR3MvaGI4YUxBUkhYK0k0bDZiaDFv?=
 =?utf-8?B?R1YyQzVFVDZqczIrU3hUVWRyL3FhVU1sMUtvaUx2a2NjdG1ZUkFXSVRPZ3hu?=
 =?utf-8?B?aG9uQyszYkVRd3ZhWjI5MlRHSVUwSkhxOTRGR01nOEFlaUNoRGxGa1dzREJu?=
 =?utf-8?B?Y2p1TVhFWjZ3MFdHWkxiZ0NXeWYwWmV6R3pqaVh1TzVCVVZxbDU2YXc4bGhi?=
 =?utf-8?B?WmM0ZnJ4Qkx5cDROUWpiNTl4RDZOTE0vRVptdWgrTEo2Yk0rMkcraGhHeWVF?=
 =?utf-8?B?c2VicXJHS0d4MkgwUWIyUmFjYzZOMGdCN0ZDUDdsdXZXWHlYeGROQT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6319977-8294-49a4-d99b-08de9fb251cf
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 14:28:56.1042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gZShoiVJhPtvgHw9kzJugziK5aI5uh2I5ITZZwC/77v24kKPYRaOx+sx5ulVFoOsu5cGI0bQBRNhmEQe7dJp/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6527
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
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7298943C06A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/16/2026 6:53 PM, Danilo Krummrich wrote:
> On Fri Apr 17, 2026 at 12:18 AM CEST, Joel Fernandes wrote:
>> On 4/16/2026 5:45 PM, Danilo Krummrich wrote:
>>> Why do we need the try_access() dance in the first place? I assume this ends up
>>> being called from the BarAccess destructor?
>>
>> BarAccess is different. The try_access() calls here are in tlb.rs and
>> pramin.rs for Bar0.
> 
> Yes, and we shouldn't need them in the first place; we should have a
> &Device<Bound> in all call paths this is called from.
> 
>>> If so, I think this is solvable. Gary and me are currently working on
>>> higher-ranked types and a chained Devres type.
>>
>> Hmm, the issue here is we cannot hold revocable guard while sleeping, but
>> we have read the bar as a condition in the body of the poll.
> 
> No, you should just require a &Device<Bound>; or maybe we can utilize the
> mentioned higher-ranked types and DevresChain once we have it. But in any case
> you shouldn't need try_access() here.
> 
>>> With that, such use-cases should be cleanly solvable without the need for
>>> try_access().
>>>
>>> Besides that, I can't find where BarAccess is ever constructed.
>>
>> BarUser::map() constructs it.
> 
> I'm well aware, but absolutely nothing calls BarUser::map(). :)
> 
>>> It already has a lifetime 'a for &'a Bar1, so I don't see why you can't do the
>>> same for Bar0.>
>>> But again, I don't see this being constructed and I'm not sure the whole
>>> construct works in the first place.
>>
>> BarAccess uses &'a Bar1 because it's a short-lived scoped object. In long
>> lived objects I am trying to avoid this.
> 
> Don't get me wrong, if a lifetime is sufficient -- that's great! But I'm
> suspicious whether it actually is, since BarAccess is never actually constructed
> and hence I can't see how it would be used.

Doing some more research, the BAR1 read is required for vGPU bootload,
which happens from Driver initialization. The BarAccess (which I should
probably rename to `BarUserAccess`) is created, accessed and destroyed
before probe ends. So it appears for the moment (and for other scarcity
related points made above), I think keep Bar1 as a lifetime makes sense.

For the TLB and mm objects, I was trying to avoid using lifetimes. But as
you sort of indicated, Device<Bound> and hence Bar1 should outlive the MM
objects, so that sounds like the right approach. I will plan to have that
for v12.


