Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 812417B9D09
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 14:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D61F10E3EC;
	Thu,  5 Oct 2023 12:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F3B10E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 12:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696509605; x=1728045605;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=j8iwe+Dt0V3iV7l6CioGrUrPdPKxFIkB3O7bICrfqCw=;
 b=KlODvwqxYkdSy3EM+LwM2dZkYozUeYTx/XoSH67XvEJ4lMG4d1kHwWan
 AaQblFhETshbaoIhns3hTV4H3pjeufk05lJWMGdB5Y2EMBJ3Y4hqJtyKB
 av9MUeU6G3yb9FkLsqBXQ+AwAbspEV4KfecMMXeczNKh1EotR5x2OxLV3
 RgPyjTeH/2lRwas2eaktzBxxGQMNd5E3qoQGh+4z/UL6ZPF1N74tX5inE
 tLDG1S0w+jKdFVnlvdDWq0lRUtKVOqhewvLmzko+1ICDIMWGctzZV5wxL
 kh8skasPP4kjYzDiThqQNbiDq1CqtpwfJcogLYSAAWXQ1wVIf88nEVkiQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="447664937"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="447664937"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 05:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="1083009978"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="1083009978"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 05:40:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 05:40:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 05:40:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 05:40:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U7f3pA2NSuKajkIHwHoApmyufB3BHttxOWo3BFpKfceyuNxiHMuU/vQOeE+gpIvCHp3bonvbQJNTbKbBYvcIXqTw01yHVztk5IWPoJ50BDjT/JPg2Qbnr6ry8q8bi1vru2NtIrFNipi3aSncM5FSGpI0qsAt5PrUkYc22lE1ubPlUC9t2D61SiALPty/4Emw4v8O3X+6X9aLJg8vTSg4C+/h6anxzEmoHWNuBeTJHRMtXj3pjet0c1xWxz/6mO9CUq0PhWw+D81ZR+9Qi//1JIsnv5s+ctRdFy7NC4etFSJx4LGN5XO1e8sqgPD076L9uPH/Hu8XVm2Ex3uPHufTtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=48qZ/+xYC4qr6xsbvA9r17cR1eJ1cq63SpUnJbkE4f8=;
 b=FTSV8gQphHoHl6pvUeKcQHBaGcAlXbW19KuN/+aiwQKZQNVJBy0fdrUvbC75JPkkk60NT2pfdEYb7hiaeIzFhso3QGMn1g8idHUKyNKt71mOD3kHkYJOX3253Zc6chg0p4t0mr0l1RavRSymdVEy/DXMXGgm4sUeVQg2m3mlkIFIumG6ZUOJGBMkqqJNn99iZCNFEKp2OG1kH1uryvuplg9epmh0hoLc8vbHlqAqABhmhBk0YLYFpTKzyPwjJGD+LOX30Gd4c9bjJOz2obPisEKTU2ZBfWhc3wJrsxalQf1Urk/fXr+XFhHjtnu5mphGSzKG1QxZfEH53p49cuc+iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BN9PR11MB5308.namprd11.prod.outlook.com (2603:10b6:408:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.34; Thu, 5 Oct
 2023 12:40:00 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 12:39:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231005001310.154396-1-khaled.almahallawy@intel.com>
References: <20231005001310.154396-1-khaled.almahallawy@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 5 Oct 2023 09:39:53 -0300
Message-ID: <169650959377.1601.4111271359854746928@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0129.namprd04.prod.outlook.com
 (2603:10b6:303:84::14) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BN9PR11MB5308:EE_
X-MS-Office365-Filtering-Correlation-Id: 901f7317-34e0-4ce1-b7ae-08dbc5a03046
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6+u9wkYnVRnGRiXU2qjK+L1mlZgM0Prs8iFFUWpBHL8lb2Voj87toMq6JU+FOPk94DxpsAUbJwVBym7T2zvikEwHYZGiGrsbSNnFppJL0gMkVyO6Vf7n4kXn5wzSpJMzc0CSCRwIy5BN805PeTIoJMiD5GYm24Sgurux0wGfQywaygkoCaVZzMyk8KGyisZeDBJvW8QFcLnsurNjblZJ16AAeku1zOeZUMJmFWHzCOK/L4ZOwPKG4xuVC+QwxMwHi6IJcph3qBHafuBMIgdk2QxaL3NoXrsNWdOudy8V1Saqp+2NnR0hBqRHC28Qc3eJvxt5r6k9JFsGCE6NMlmHhZ9mNcce4pvI2AWtZby4fd2f+0g04o3D4QbPLBc3cG6HW8AGFjcPOYhFSgsnzXnaMtq7Fe/sir2OsivmSt23lWboRkP3TidPSP9QwidoV274rC5KfxX9lTSEanTQN7jAX+UlDxrRbwwGR/Lbrm3aya4BqhhFI72Us6QopicKzMDHQkcqsxfhcAJF7U+ZWWOtQZOUdHIhYv7U6tmled46pGlN/xTB8lEAP3SS9mfMpeV5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(376002)(136003)(366004)(396003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(41300700001)(6506007)(44832011)(478600001)(6486002)(66946007)(9686003)(6512007)(107886003)(316002)(54906003)(66476007)(66556008)(8936002)(8676002)(4326008)(5660300002)(26005)(6666004)(83380400001)(2906002)(38100700002)(33716001)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmtQYlZXSzRwc3hsQTBaS2pXNzlMSzZoNEttWDZnajVmNHFCbUo4YW9FbElD?=
 =?utf-8?B?ZDYrNkE5ekJoUGtDOTBHQTRqTUxMeU5HcGNRL3hrQlhjL25ramhEWjN2bi9F?=
 =?utf-8?B?VkZ1SkdIcjAxRkVROUVrWXBzQ0ovQkdYNmdVVUtMc043ZkZRQzE4RlV0Z0No?=
 =?utf-8?B?bVNJOXl0UWRrRHE1N3Q5U3dvWXI5Nit0MmlDRk9OaEpQZzdoN0lHNU56UDB6?=
 =?utf-8?B?Z0lpZUF6Q3hVcWxxMkpzV250UW15SEJFMldjZkZPOEgwWnZ2ZEEvOTY2akF2?=
 =?utf-8?B?anBpY3l3dHBvRGxxbVdHTVMxK1FsaWRyN3dqMTVhUlpyK1FhMzJKRlFMR0NM?=
 =?utf-8?B?cy9BV0ZsL3RZUzRCU1AzQm53NTBIbGhYeFRkcUhOQjM5UEFOajJFNGo0QXdH?=
 =?utf-8?B?OVZ3M3diTGxNL2JkQ09wVStOV01oYXJXbFFLc3ZqcWg1ajB3TWt2Ty9FajNn?=
 =?utf-8?B?c2FzQkJzSDlBT1Y2SmpBSGtIMkkyTEpWbmwzbVA1ZnNPWjYvZG9uN25YUjg5?=
 =?utf-8?B?T2tMS1oxR1ZXaldZK1oybGFOYU1BNjJFMnVvdHN2V3B1Z2ZON09BTnM2eWdN?=
 =?utf-8?B?ZUF4MW9yREV0Wlh6TysxUUVVdmZSQWZ4Nmt3YTFXV3A5SGtENzMxMVJIK05F?=
 =?utf-8?B?YjJmNjUwbWxmSi92VTd0VUhyS2d5dFFRQVRMbTRrZVR4cTluUlBQbEZUalBo?=
 =?utf-8?B?MVhsRWpmNGRrYXFGYjQ5Z3lLUkFiOFowdzdTYkJDVXB2d0tCTXBsamNobVJY?=
 =?utf-8?B?b1A2QnphUklURm5rN05KOTB4dzVJZ3NyaUlyUkx6WUFlRXpkTHJhZmVLdHhq?=
 =?utf-8?B?azJySFdkc2Vzc0NmeDFobjRRUklEY29EQ2lXU2FoaTFHT29rekdGbFN1TGN1?=
 =?utf-8?B?TVh2VGlWWWtMVUJpdnVWTzR2cmRubi9EOFVrcGlhRFQ4VGNuSTNxSnNRVkhO?=
 =?utf-8?B?cVZqc0o1ZUcxV3R5U0x0VmFzdU1FTmFBUGZteEtObys2UnJhM1M4SFc3bDVm?=
 =?utf-8?B?dXB3U1h6UkRWeFZvNWs1T2t0d0Vmc3NwSVU4emVqbXVpR3J1NFFOeXZGdnV0?=
 =?utf-8?B?MFJKcGZXY0NnRjhmRlZ3OHZyZkNvWGdYaGx4aUpPbUxXdTFGQmxLZ1l5TktZ?=
 =?utf-8?B?cUV6VTNvell3VldBY2pVQjM0MWl1eDYycFh3MmhXbEtFSm51VEVXVGw0aHJ3?=
 =?utf-8?B?RUcwa3N3QU5pRDdBRHVQZkhhZURXNDRhM3YvVTlMMkViK3ZiWm9JOHYxUVBu?=
 =?utf-8?B?TTRseW5jbUJJckJ4NWdwVE5GK0pxMytnOHFYT1A4ZDNLK3JFSmc5TkRNZ0Za?=
 =?utf-8?B?M1VKbEExQzVKVmsrNWM4UklTRE9NdVZKdkoxTFYvbXFlaWlKZktxaG16Tmt4?=
 =?utf-8?B?YW45d2VMamdubGNaeitzK0xPUlJid2x2R3pRV0lFWWVKQzloNWJqclNDbjlG?=
 =?utf-8?B?WlEvc1U4ZkxmbXRHZlUzN0NDM0RieW12TytjVFIzSTIwdUhndThFSlRxK2lq?=
 =?utf-8?B?MlFma29rNUZUbko2VW5LV3NqanZLVlc5QXdWL3ZnbkxTRndIcmRtTXFsQ2Y5?=
 =?utf-8?B?dEJKcVBRMzdSaituVjBoMUV0QXUzL2hNM2ZtNG85Y2l3UXFmcXhVbXppSFU2?=
 =?utf-8?B?amM3ajcwN3VMUjhmYzRwSm9JNFFSY1ZMdWtvUkdjbm1vWnhzSDZmeVpkWHl5?=
 =?utf-8?B?S1lROEZvanNNRGRHbC9SWDZSd1pwUU5DdG9oOG9wdGNPTjZJdFdwc2cyOHRr?=
 =?utf-8?B?THZLejZUcWtmQnZVZ1ZlOHpGUnRPU09WbkdOaU4rTFZFL2VES29QQVl2Z1Nm?=
 =?utf-8?B?eHNXYUhYaS8yQ2NjVG04UTVlOVFHMVN6UWtSalFtSTZFNXJGeVJBTkJTa0Ux?=
 =?utf-8?B?QUxGRGdaTE9LRHhPcFI4Z2hTOElGaEhkOGc0a3FtejdmWEx1VHhCQWxHdzdC?=
 =?utf-8?B?REtLWjcwR0RmR2hvNG0zdXFyU2hYMGlrWklLRlFOUUFvMkdmMy9BYXlmcWlt?=
 =?utf-8?B?QSthaDBLRnZvYU9HRG00R05CYUZ4QVFUaXZsbm81SkNYUzZ6dEV5VFBzTzBC?=
 =?utf-8?B?THBQYmllcE16bEd1Qm9PazcxbDF6SUZvbHg0M3ZMdGZNdG5MSXNKcVhNYXBZ?=
 =?utf-8?B?UnZXVEZqSjZEYWFHdmZwbkZWdmhYKzlrSlY3TEk3UXV4MUF2ejMzSEFZZU1X?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 901f7317-34e0-4ce1-b7ae-08dbc5a03046
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 12:39:59.9522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CedXOGMU2zzdoBFb1yq1Ir1GmI33kvaCUfYKygtDOQHYPii1ENYgngrKITMDHC55x4vJxefGKdEu1C0SeSchmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5308
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Only clear/set the Pipe Reset
 bit of the PHY Lanes Owned
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

Quoting Khaled Almahallawy (2023-10-04 21:13:10-03:00)
>Currently, with MFD/pin assignment D, the driver clears the pipe reset bit
>of lane 1 which is not owned by display. This causes the display
>to block S0iX.
>
>By not clearing this bit for lane 1 and keeping whatever default, S0ix
>started to work. This is already what the driver does at the end
>of the phy lane reset sequence (Step#8)
>
>Bspec: 65451
>

We should not have blank lines in the trailers section. This could be fixed
while applying.

>Cc: Mika Kahola <mika.kahola@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

Nice fix. Thanks!

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index abd607b564f1..f653b83a7d4f 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -2596,8 +2596,7 @@ static void intel_cx0_phy_lane_reset(struct drm_i915=
_private *i915,
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of SOC r=
eset after %dus.\n",
>                          phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT=
_US);
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>-                     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1=
),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset,
>                      lane_pipe_reset);
>=20
>         if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port)=
,
>--=20
>2.25.1
>
