Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F770857C63
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 13:15:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6501510E601;
	Fri, 16 Feb 2024 12:15:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EJb3UXFp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC3FF10E601
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 12:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708085750; x=1739621750;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=vW69aO3AQUZyzChg8T91JvOUnD/nX25A9/FRvrVRrPw=;
 b=EJb3UXFpoNc0RfukIXLLaUw3efwLeyDnJ2v4nyLb+OjjhVHPE7p+Ve96
 6CPBS2Li+Z/nPR1SO4WMWcZpWGoPdFhWNHarFLQsMU80Uo0LeoBMm++tC
 34EnjkRAdWKqK3pze0Lf3iKUlAJJqfAcSS1pHEyycer3UQ/5RrnS0ejtN
 JrDY8JA/9exqkHL0VlezFEUEVhzzaC0ZvOBrpN5YxBeZxEoujLEaBAjK4
 whsPYS0p9xI5ZKRfeUE1he/U55igHd8Qmo0wUBaS2uIQt3tPNzHmDO4m2
 cmiTkqLKYQ6MUi2eVuArEYUZxCxNpcuabyyS7BS6KdMmfS9vn2pjyzCR0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="13604865"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="13604865"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 04:15:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="4186582"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 04:15:50 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 04:15:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 04:15:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 04:15:49 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 04:15:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YgOp9mYAGRcoiQoTJEHsX98+XajSTedsZnLh0prkqVKxnGZbbAhYJVicPbeet3faV6y/QMC6QVPyARG0GlSa7o/43bB+Ipu+kEyekc8qe0S6y1XFfCl9cH9aDHH3Yk8TGHT6omDQ+m8L+nTy8+frVgL+cUdFqvxxvIk0HqcvpDPu3Lj1tsaAOBnPjE4e9X6SPU7UdkQkXq948LD7goJ9I9IXVrIn9VtI51n4sq9vEbnWeWrLZV4FCjL77iPRZgsFL2ZlipOKollwrNr/36dNYfck08S1KQt2GFRSDVb/x2xv8FFNQlN0RINn6Hvj1XM1F+YmOvvAny/tpZIWLAmwQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J4tKFpYutSt2KbOqK8BLdAcMK71vQgiJMx4y+PeuPQk=;
 b=mtnm70S9Lvkz4OGLbN9LMTa20mS/pRI2rALN6ZgR6rbnnAXpqIjbVeY9ymJ94Pl8py/7oIgFdQyJSagI9zv3QmN8xLKAY0nVTFrHzuc9JND2EIgXruic4GgGVYycPl7Oue+t3FkJLwU3kbsTvntbGUjo5IEmzvve2fWYbB/Vul7i6fyYA6CuyBXO5SsASSDvaWjv9++/FkjP5UmBZKH+wJ5n5pyVZmQ79R5zuzCvs4VAJS+f3AU9+Um0vEK7xbMJw9LmJeM4z4SYOaQJTgxZQTWjN9tjD46EHH8NnfvDI2cDl/TDRoZ0Nog4LI8TwI3f/0xMBJhNy/eddxaw+Vg52w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6996.namprd11.prod.outlook.com (2603:10b6:806:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 12:15:47 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 12:15:47 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240207013334.29606-3-ville.syrjala@linux.intel.com>
References: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
 <20240207013334.29606-3-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/4] drm/i915/cdclk: Squash waveform is 16 bits
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 16 Feb 2024 09:15:43 -0300
Message-ID: <170808574385.10917.9184001855269194569@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P220CA0029.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::34) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6996:EE_
X-MS-Office365-Filtering-Correlation-Id: 038ba124-beb4-40f6-5e59-08dc2ee901f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7ev0NuLfTMREA7zm8zJaHfARbBBR3T8VycB7N+At1pxMFIvWOJsMwQcVAUMwzFTdXBSk/y1+SeQYiZYvtxwA4j2l4qZSfaw/8lKNboM+G8hYX5CRf28hf61Br/E5/cHZwuAXvdh2loerdNPT8v1kunqvhdwtHtIb3zAszV0ksHYRC9Xd8wyhSnvaMGleO+toW3e/79eX5RATmmXKEX46K8qHPZoxUe4Rl3hUDsFvHr15UdFev4vVmYGXe+Tf9AoyOR6AVbhhg3R1OlGkUuvL6x6B3dYjFXeSA/74szCkYXnPbg0HqBFEp0CJBIERAg96i2A1qf2E0JSIBwkrq1upzcV/Zjte8D/OcSva2Vr5R0BaH1iGuBNPBbmV27Q/XGuybBZ0bA80EFOlSF9V8HR4TQc5n/EuZLEp7+Ru2xAZbBhg890azvIdmaSohI2WMg7+rnG0T/8X86FchLAiAZUoXx7PIlP7KuCKYTsyfiqp5lPt4pfvLiqUh1KLjBcvKpo2aPK2791oU5vrSgCZxcJrcY0+FKeJOO8Xi0niXUW8gj5tNdLiBUWsLdr8b37Honit68XTF3D0BB0yyWSqxjp9RxaG4qoL4oTTp5QvJwTkUUh0cK27yA+poPOVnP4lK6Hl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(39860400002)(346002)(376002)(366004)(396003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(33716001)(38100700002)(82960400001)(83380400001)(66574015)(16122699003)(44832011)(316002)(26005)(6512007)(6486002)(478600001)(6506007)(41300700001)(9686003)(6666004)(2906002)(66476007)(8676002)(66946007)(66556008)(8936002)(5660300002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTMwbjFhdGN0QSt1MGkyemlUMGtZTXhuMmFQMnQvQ3lzY01RT2tjZ3o1R2Fi?=
 =?utf-8?B?dGhJanR4OVdqQ1ZmLzRHdy9RQUV4eWdzL25NRnBNazQ5MXhDcGpPU2hCNmcw?=
 =?utf-8?B?QzBTM2xvaS9FVVVMdHN5KytJOWlHWkhKeHNDM1FtZzYrZWZ5ZXdheVNBa0N4?=
 =?utf-8?B?MGo2eG9PYXM2RWhEc3RLVkZKZnZPaTE3ZGx4MjY1c2F3OFU5RGtZbTNNTlhu?=
 =?utf-8?B?cjlPZVVQNzBISm80bHdIcnJkKzhmVkFocEZVaWViVzUyc3dwU2ZRT1R3bmRn?=
 =?utf-8?B?a0RyTUFOdnRvdHVrbTRvRHMvMXhENkRxTXN0YmNnWVk4d1YxUWN1SjJrdzVP?=
 =?utf-8?B?UCtFZ0xERDBBVmdrVXVNRU5MTCswMHlMNjN3bjB5bTRLWmdXYkxMVlFXdFVH?=
 =?utf-8?B?SzhjaTRIMEEvMm5adW5yVTg1K1BpL2hTN0QvRnNTRjI4Y0RBNVM3Y0M2NlBC?=
 =?utf-8?B?MWRDZUR5Q1FybkVMY05GcmJSVGRIbU4ra2Yyam03dWdYZnlEOWl0MjBJVys5?=
 =?utf-8?B?SXZ3djRJakVZQ3lNTFloU1ljbEFpczJvL1JhR2Uwb1NkNElSTGg5aG5kbVQy?=
 =?utf-8?B?dXl4MGFCRFFTQUZOekxtUjRoSk9KaVVkZXpreE1qTDR4d21qRk91VmJxN2Ji?=
 =?utf-8?B?YXJCcDRhb3ZoZnB3VDFES2kzbzQwNW94OEZibE4vQzNwaGhScVVTMzQ1YnN4?=
 =?utf-8?B?OFhDTHc1Ry9qSFZYbTg2YkpKbkFuUW9iK0JPUUhiQnNLV01DOHhmZzdOQUM3?=
 =?utf-8?B?WVNzSVVTY0tGeW9nSVV5QVVPMUd6S2NTZEJTSC9ZQW5kb2VwclMyZE5FR3A2?=
 =?utf-8?B?bjVrYkhxZmxBUVprendNS0lXdGxtSnRCeXlvVkVySzl0dDZoWkhXeWxRNisz?=
 =?utf-8?B?Q3Y5dTNqNi9YaFhHdTZrSDdRcTJQUHlYT0VzdFd6RU5PdnRIckFXeitpQktC?=
 =?utf-8?B?VkFtZ2kvNE5ISkRkT3pFckI0UnFQV2ZYNlVUTUtkZzNkdDlrbW9DMkJsNjNC?=
 =?utf-8?B?aHFUbzBVYmNqSnlRekZJWk9oR3hydTZRRXM4VVdHZTJpMC9xb0tsZ3FOVVV0?=
 =?utf-8?B?em0rZWdBWWc2Wm5jRElIUEIrcjhCWVlPSGdKdERFUUgwVW5peXhPRHo4MEd6?=
 =?utf-8?B?aW13RnNtV29ORmRIVGhrQ3NxMi9NUUUzTkdaSGh5VkYzOWpCaE53YmQrbXhT?=
 =?utf-8?B?a2E2NEI4SDRmZmFsMlM5RkttR2lybDRDRHVmUDdSYW9lTDhSd0ZVb01XSlhi?=
 =?utf-8?B?L3RNTW9CQkx3QnV5dlh0eEs2S3JEN3Bmc0QvWFovSE12TEx3bGVWM0t2WENk?=
 =?utf-8?B?cnhWMFo2aitJSEhEOU9SZGF1NzFSaTFVSVFFSDVScG5xZjkrS3M4NVFiWGk4?=
 =?utf-8?B?bGduaUJjZ2U0QVdOb0tlRFhsSHZrT1hYd0FvSE03SG1abllpZXZVV24vWjJL?=
 =?utf-8?B?ZzNKeDVKZS9mK0thQkJLd243em14YXhRWlBrcEt0eG4yQ21jdVBaVjVUY08x?=
 =?utf-8?B?SDNkbVJQVEV1V0tEZDBQVHFuanVPMnZreGZSeWRWZ0dNM0pIZWpQb3JuT3dy?=
 =?utf-8?B?bFpCMHVkMm1XS1dzTU96bWNVQUp0dkJVcEVIc3NoNk9TS3BFS1RXYyt4NlNm?=
 =?utf-8?B?TENldnEwczViN05PMlE0Y3VlOGdBSG9LYVVlblZaWVZmcmw4N20wVUt1Mjl2?=
 =?utf-8?B?Q0h2UzJUOXl4MnNzOFkrNURSaHdKMjhLTFZHMzVYSnFhVWZGc0RhSG1sYUFM?=
 =?utf-8?B?QmFlNU9VR2o3K2QyQTA2YXh0RWdFUnhxWjlQK1lBdDViOTkyQnJheVVOcGNK?=
 =?utf-8?B?K2FGZTk3WnZTOGsyMkFRMU40T29KRGc3NWF3Y2ZiNm5Nb1g5K092TzhwaUdn?=
 =?utf-8?B?dlllWnR6NkRaZU9DeEJWdElOT3VYcGlYVjJJK3hTcW1scm4zSFNtU1JISG9o?=
 =?utf-8?B?R2RUams3M2JJTkFJUlJGeDIxVGZQL1FKamxiTlRPam5zamNpZFBLbkRsV2tS?=
 =?utf-8?B?YXVRVkZneDJSbndPc1c0dUpuVG9qZHpSeG52UWVVODhycm13SDNjZ3kyKzI2?=
 =?utf-8?B?aUxpTTg0N28wRmNnMDFlazF3UUpJYTlMOGlRQVZnRlVocHRteE5TZmJ3RThU?=
 =?utf-8?B?ZzR3QW9qcmV6YjEyU29aZmpwNVYvNnYwd0RzZlRkUlFURGh2YjdOYW9uRlBx?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 038ba124-beb4-40f6-5e59-08dc2ee901f3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 12:15:47.5778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: snRm6dxfN7zIKtM0Kvhlkm1Ap1u5+NiC0KG90tAruEcpld6Abc0EplTEFr+oi3Kr5oKIkIJAeaLFiKNBkfPPww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6996
X-OriginatorOrg: intel.com
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

Quoting Ville Syrjala (2024-02-06 22:33:32-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Have cdclk_squash_waveform() return a u16 since that's
>how many bits we have in the waveform. We alreday use
>u16 everywhere else.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index d79485e17ed1..a0013e37d53c 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1778,7 +1778,7 @@ static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_pr=
ivate *dev_priv,
>         }
> }
>=20
>-static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
>+static u16 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
>                                  int cdclk)
> {
>         const struct intel_cdclk_vals *table =3D dev_priv->display.cdclk.=
table;
>--=20
>2.43.0
>
