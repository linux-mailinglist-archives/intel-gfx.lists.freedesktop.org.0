Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qIA8BtIQPGrDjQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 19:16:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 715AF6C046F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 19:16:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=kWG68TTm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A09310EFC5;
	Wed, 24 Jun 2026 17:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012015.outbound.protection.outlook.com [52.101.48.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BC610E0BE;
 Wed, 24 Jun 2026 17:15:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nSCxeYUA96U4R39kFzqtydq8kM3rWx1GYLOV8nSWSWmlfHuf2uuNiYPp9MFwUUmhAJBrZIzVR3rkhfMzIG2y5zhAyU6D+vSTHWznnwWjb4+on8Cngieoxp0Ksll5jzArWS528bwf1B8Rsi3U3EbLBPduOsTDiwYu7k+yz7S9VhDBgH0g2WGPRFpep23sW4pDl8gu1xbWx7zcRYz5adbE4rUUixqCS8roWftwwZQZ59s9j/tkhrgikhQ+ZecW8/cPbQI66VcYr6P0qmOxtP8mRBtuilfhxxenYmIgnp74YDWK4AtarO/pvG5YYi92oh1fnulrqJ3yarpSIQJjpBNIUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DSIqwCOmKvuJgP+W+1Ip5bdDln++co+nhjJC4ATyz34=;
 b=Zx2Byzik0swi8PbBrG3JwQIK1TLcdiAUCFWlJdJ/UaZ7eGSPhmDR3n/GQT5pxDZYirUWPqe4eZm9ggQqlYGNj0N73wp2D7VuyoGYwTGNQ6M7xpQo7ORwrTqrfvwOcsjeqHiAzHMRuGMCps/K/Zbi0cfNiN6bnLba4mqy/6W9rfgBMzikmfOMPGwarV+SWU5zPlw6U5pujioJY4/8FiRkJeKqbZYSu0xzAo//2YAQ68/k95LZpRe39L6aGEoifJOUc8pvPCRgNt2M8C2GFDeeXunCdVMlpC10gfiNymFr9N0C/pdyGhpY1GkbJD8/KN/qg9G7vjhHalQhOqYkDwqbzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DSIqwCOmKvuJgP+W+1Ip5bdDln++co+nhjJC4ATyz34=;
 b=kWG68TTmKrmfX8gm87FD60+Zreg8p8oy5zLpd+O9fDrst3ycM2Ct918Au47ZIPkgnE/i/JLMve40LI87d+vyR2nCiOMEZ4POppwxOn3w8pF4zljyuLmFB3SGs6k0W9sP7LVmFzRYwo2ZHwcxlHNNIyyXd0YF5Qf+0yxXM/QhNZA=
Received: from SJ0PR12MB7007.namprd12.prod.outlook.com (2603:10b6:a03:486::8)
 by MN2PR12MB4223.namprd12.prod.outlook.com (2603:10b6:208:1d3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 24 Jun
 2026 17:15:49 +0000
Received: from SJ0PR12MB7007.namprd12.prod.outlook.com
 ([fe80::6f95:c4a2:894d:9e8a]) by SJ0PR12MB7007.namprd12.prod.outlook.com
 ([fe80::6f95:c4a2:894d:9e8a%5]) with mapi id 15.21.0139.018; Wed, 24 Jun 2026
 17:15:49 +0000
Message-ID: <cbe3b560-bd25-441e-ba52-32c917880102@amd.com>
Date: Wed, 24 Jun 2026 13:15:38 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 01/28] drm/amd/display: Remove unnecessary
 SIGNAL_TYPE_HDMI_TYPE_A check
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Daniel Stone <daniel@fooishbar.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org,
 Werner Sembach <wse@tuxedocomputers.com>, Andri Yngvason <andri@yngvason.is>
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
 <20260609-color-format-v17-1-35739b5782cc@collabora.com>
Content-Language: en-US
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <20260609-color-format-v17-1-35739b5782cc@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YQZPR01CA0008.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:85::23) To SJ0PR12MB7007.namprd12.prod.outlook.com
 (2603:10b6:a03:486::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR12MB7007:EE_|MN2PR12MB4223:EE_
X-MS-Office365-Filtering-Correlation-Id: 5755d2fd-7d55-4b6c-b7c1-08ded2143c99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|23010399003|366016|376014|3023799007|4143699003|56012099006|22082099003|18002099003|11063799006|921020;
X-Microsoft-Antispam-Message-Info: dtqJ4pYnfN3v7nM+BblRoj8FVRKvrfwNCemZena2/F6nC+M4aBiGWgXA86SfCGt0iRVdl2oIGzyUTqL4CeEvpiltIHl4LO/vMi3bC/rP+HXuCfry5AdA+SMR+kWuYnwY4nPFtikxypSRSS9vQetslua4wL9uXK00aH0qeiISB1QtjktY+1mUSdwFmt9UIxN5s0xuqivs8RiCh4UjOC457X3N7EL0JPTElryvG08pxNW9XtmeKoqsOGq8+vtkHyPu1EslVr9YBYejrh1NPTk8ZA72cFyBSrzldMK7NhfV0Bmpl7cmpEL+lFVAZKUJoJvByMnZ0tn5M4ywZ0o2AuLUvSv4hBMEGlr/tVJul3VbqUnYtoeKGh+TE9WeEv6y62SKBZDkTXjvxgHPEXrsTni3bcai2KhO3jsXwyP3OxzDBODIPutkFiWxiHkyFAUl3POBDOmNOnm/n7mQXEIo1Lac+6v1LDXVSa4l3lL3wtEUSIn3yiG28TiibD8y5lok2z5zXu9Nu7N7iKja+4oZM0IGzDFBaeF+OJHCDy+NfxmPCZ4Mn2KKsAXlbjLoQXj4alWtrD+a1H3EEzTokH2Dm8j46VNyHgLTeicd6icbCtCH/bSqNti16tVqwAYyycWiYwf8J6J8bgsaKO2Herygp5+eDF5szRu5w5xToRZ52e8uhh+LO+/phd2g8w9UMmMWYU2K0nHEgTytHreRbdF9v8sXvw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR12MB7007.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(23010399003)(366016)(376014)(3023799007)(4143699003)(56012099006)(22082099003)(18002099003)(11063799006)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUNVNFQwZk9pY2RWcnVhQ0gvZ2RockRJdzEzdEI1MUF5RW1EblhMY1JyTFFl?=
 =?utf-8?B?V0tBdlJVWDRTeU5OZGxKSkVGTjVvVzYvRzhhVVRXd3NTZEl2RVI4b2d0djQx?=
 =?utf-8?B?MkNBaHZlaHFCNUNzTnJDNXp4aXhhL0Q5MFl3UGZGTGZwdnNpZnUyeCtNdUdI?=
 =?utf-8?B?ZUl3V1VKQnEzRzFPVnU5SUhtNDJ5T1R0NDdMMHg1d0NHc3F1OU9QczJiT0I1?=
 =?utf-8?B?OUxMS01wZWNleXNMQm93Z1RkRHVjalgzRjFzc3Zrd0xVc21BQW9BaGpqeis0?=
 =?utf-8?B?ODRZa0VHeHVvQTRNZUZINHRnTVg3bkM4NWdVbXY5cmlWeVBOQUJ1ckZVSzBO?=
 =?utf-8?B?anlpTU0rVXFhMjhCTVV1VGtSRURDV1VCa0JxdkJ2NFNxTjljbnZIbktZYkhP?=
 =?utf-8?B?dlRBU3VIS2ZqWVhLblpQS1dlTnVoajFvZW9zRGdOdWQ2ZGdHNE9PV3NXRU9E?=
 =?utf-8?B?S25qdkVrZVl5VUY5cTFSN1A1d3ZDZ080ZXFwL05RdW5oTUFrenZrRDBlVjBZ?=
 =?utf-8?B?bHdHdXk0bUVlWmpPUnZiOUpsU1dnNXVZTHczc3NTV0RlUVppOXlFaFNITzQ1?=
 =?utf-8?B?a2owU3lsaTRscWZmYllZbm05OER5UGtmQ2xiT3E2RkxDS3A5cCtzUXl3Mm45?=
 =?utf-8?B?NDRxRHJtNlI0R3lmQlYzNjhMUG9iVGZnSnVUSVlTaXZ5UGl2cVQ1RG41bHJN?=
 =?utf-8?B?VnZIcjAyT3VXYnZUa2EyUVRpU1VTaVBNWWwrZlI4Tks5MDc0dVJlcjIwY1Vu?=
 =?utf-8?B?UTdDeXhHL2RDUGRCODN4bU5FUDYrYUd4cktrb1d1SjFkam5BdDFtQ0pIYlhp?=
 =?utf-8?B?b2hmdGx6eEIzTmJwNDVhOTU3cndvN244UFpzU1U0Q2J3eXF3MlVWU1hYQ3VH?=
 =?utf-8?B?VS8zZWRCOFFnYUtiNzZGMFdGRHBNeXVwV3JKOEt6b2VPdnl3WmZCV3ZXbHYw?=
 =?utf-8?B?d1VNeE9IR2pYajVodWM1ejlsUXVwM2JWbHhLRUtvRnVYNTkwdUlqTHQ1RDJo?=
 =?utf-8?B?UjlVSWxBL1VVdXNUU1dGNWUzTXIyZURhL21pcTJMNmpoY2lZU3k0SkJTZGs2?=
 =?utf-8?B?d2RjUWM4bFl6bHFCSXltTXFxVEd0cjhYdklaa2puMllQOS9GdzI4QkRDOUZX?=
 =?utf-8?B?SVBLS0drZEV4VlJFNDlTRUZBN1FiZldYL3ZzNys0cTRCbEVKSHhIc3R1a2Yr?=
 =?utf-8?B?Tjc2aXBuWXI0dkVRNEd6RUNGR05pTjRGaGV1RDAvTzIvYmN0aVRRZ1pqSHNm?=
 =?utf-8?B?SkVlWGthNjFma0FaZlpQWkFTaXN4ckp3QmcyeUY2Y0p0dEM2V3lMU2w4V05W?=
 =?utf-8?B?dlU0MEhlYjFlQnhKcDBCUkdWUmcrc2JsYklJT1JMeE5BU1pvSm9FbUE4RS9H?=
 =?utf-8?B?Tm5JL2RkQlJZTFdWVmdnQ2RQN1lhMDJVRWZ3NDcyTTVyUUlhTnc4THBia3hW?=
 =?utf-8?B?VlREbit6SytHOFQ3U3VnRXREaW9hN3FKcll4TE9zaXNkeXN6NzYwT2E1L2RT?=
 =?utf-8?B?R1plOGpad0x2S00vaE5JUXhRYzlvOER4aFRCVnpEQWlTUUg4QUo1SDVqYWJJ?=
 =?utf-8?B?L21Gc3BManpUKzc5d1pMQWJqOG1XdXAxRldhMUJ5K2dEM1JJM0F0emJydHR5?=
 =?utf-8?B?aE1tTVhsbGltZ3NaZDNkcUprNHVIN204N2xya25mMFB0TGJpdm9vQkhld0xr?=
 =?utf-8?B?ZHNRaXNzcEQrY1h2b2VNYnI3YTNSdm8zVVJCQm10YTBZbmxGQUxObjNoUzk2?=
 =?utf-8?B?bHdmY3ZKTXFFazRseVZzcXFpY3h1ckhFakZmdDFUTXc0NHVLTDVrMDJqNU5U?=
 =?utf-8?B?SU9kMmNNMHo2ZU94NnFhWEJ6MWQzVTFxU2l2T2VsZml1dmttOWY3anU1L05E?=
 =?utf-8?B?bGVFVldEUTludU1NQlVhdUZVaDg3bWVpZllCbkRRMmtsTFoyU1hlVkNjcHlE?=
 =?utf-8?B?eG9hM01USUl0NWJjelRKSUNXRDBlTFVlTUZIWjNIZGhXQ1R3cVk0eHJTdGNH?=
 =?utf-8?B?dTE3Y3ZVb1NYS280a1FxemdicDdGbUpKSTByakNESXNpWEdValEwV2pJWVh4?=
 =?utf-8?B?dUxNZTAydkpmTWREMWxLeE5NNTh3Um00ZmJlTUNxUVZVUVBpZURmM29Lc2hQ?=
 =?utf-8?B?SlQzcVA3c1BaRXJFM0MwWXhRenNhb1EzaDRCYlNNVCtUWTF0Ri83TDNkY1N1?=
 =?utf-8?B?NW5qa20rL1lHcG44ejJvbVA1VWlHT0dGeXl2eko3V1VQVTdldUovK2NiSFF0?=
 =?utf-8?B?UUpVaWl0UlFFTjhJcHRrcDJHdjNLZGdlaFg3L2tBc1pjWlV1NkljVFdybmly?=
 =?utf-8?B?OTFUSit1aUFPeW0rUEFoS3lBcVM1Sm9wTjJQTGxKNm9LUkpKZUdXZz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5755d2fd-7d55-4b6c-b7c1-08ded2143c99
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB7007.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 17:15:49.4179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Urs+l2SRmQOapufWqaWwFEu4gq65a43x9lhLlTfI68V6TvfYNR8wI95d0qXn3mPiyjjEiDQybTIz1bp9o3OZBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4223
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[collabora.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harry.wentland@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 715AF6C046F

On 2026-06-09 08:43, Nicolas Frattaroli wrote:
> From: Werner Sembach <wse@tuxedocomputers.com>
> 
> Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check that was performed in the
> drm_mode_is_420_only() case, but not in the drm_mode_is_420_also() &&
> force_yuv420_output case.
> 
> Without further knowledge if YCbCr 4:2:0 is supported outside of HDMI,
> there is no reason to use RGB when the display
> reports drm_mode_is_420_only() even on a non HDMI connection.
> 
> This patch also moves both checks in the same if-case. This  eliminates an
> extra else-if-case.
> 
> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> Signed-off-by: Andri Yngvason <andri@yngvason.is>
> Tested-by: Andri Yngvason <andri@yngvason.is>
> Reviewed-by: Daniel Stone <daniel@fooishbar.org>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Reviewed-by: Harry Wentland <harry.wentland@amd.com>

Harry

> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index ba7f98a87808..dfe97897127c 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -6917,12 +6917,9 @@ static void fill_stream_properties_from_drm_display_mode(
>  	timing_out->v_border_top = 0;
>  	timing_out->v_border_bottom = 0;
>  	/* TODO: un-hardcode */
> -	if (drm_mode_is_420_only(info, mode_in)
> -			&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)
> -		timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR420;
> -	else if (drm_mode_is_420_also(info, mode_in)
> -			&& aconnector
> -			&& aconnector->force_yuv420_output)
> +	if (drm_mode_is_420_only(info, mode_in) ||
> +	    (aconnector && aconnector->force_yuv420_output &&
> +	     drm_mode_is_420_also(info, mode_in)))
>  		timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR420;
>  	else if ((connector->display_info.color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422))
>  			&& aconnector
> 

