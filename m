Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EF18254DC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EBCD10E61F;
	Fri,  5 Jan 2024 14:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC9510E61F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463789; x=1735999789;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=CUdhpuzzp/s14BgmnepVZYMr5CzLRXnFXBe94MF0kOw=;
 b=hZ1QFbojPAZZ0NaIUI8d13yE6QPkgvz0ybQN9uN6hJhuLndq3TUAIjlT
 EvjB3fLmVsEmixkjYoaUifj7V4TQzmY4zgL/qjwJnfIYVnS5RdQP1RY1O
 ED12em+H9zJhSdBuM/l9xfx+ugofdf+o2cb+qBVCiWnlTFENKDTQ3dpmq
 GAbBxtJnLJ72IJREHsIxA439Rl3bNJ6rtv+adPSgWRj3p6A7U4S1tyipZ
 1J4oUauAVGw5n5QZgpB0tVkc79tqKCp2cBJR4o2UQWv+fNvlzzj8OOk7s
 MNtxy5OuGaDJ/g1deZRIWZtpLSmtwim7oupBNJAUEUpFxwT2EOHP2DijR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="4881043"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; 
   d="scan'208";a="4881043"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:09:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="730480606"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="730480606"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 06:09:48 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 06:09:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 06:09:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 06:09:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 06:09:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ThrzvTOysymqntvLESAxbmq2IQvUqmHguIV2+0u1WxH+Uhbxm7ZK4warO9Nqrtp6Vwr0/4oYqDmfXAbM2g17yQlQCzlTZMgHi6zpJEpAbgN6iXzNblhPcgz0tuVN8VWrIeWWEis7Q955i6fIyRhoYem2+otcNYX9vM9fNrLASU0YNezUbxxLtQaL/npHzqsSxtARWztS5hpKhfbxDIIckbwy7NgktydAAYJ4eCW+8v9vPvlkj5TGdZym48MZB+TSe6i96FBL/G2C5GtRgzB0ItCUVgtXuyL6NMvRQGxJFmpKvtS7fqJEFt8QZ7+W4n3Un7Spih+/lubkv/uca+6ugQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yyqnx9z14tbI0+3nQemROf8v09OpdlrTU46ik4AYRsE=;
 b=lKpAqguCXjmwzBEp0k3tuclTLUnB5/WBtF+Cg11w8dg4vXnkLJf/TI1aODZ2jZh1YYDawQgTPE1qjIKwiRtQ5TYrSXxjrUtHfZ5wbFPlZroWkP0aVPRIYKNfQg0E7WGo+/rTeA2Z159E+9FCdOYffsRp3SexmUsIJtoxc+lOyhHegZp4dNOX7Tfo374dePDu3rlEWpcNCvuMv6rO2Ficy+ZC4aFo2nThcGDF7JAacuXytnzDHoqAB04rg8BBKzCkmbKmg6KIJlrHJ91Mm/NIwBOV1YtA6OyzlG8d3EvR+lgkagDD8+X1CUC8bwuzxTCZmvwlD0Ko+F/hgjBlaKiNew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB5107.namprd11.prod.outlook.com (2603:10b6:303:97::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.17; Fri, 5 Jan
 2024 14:09:43 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2d19:7dae:86c0:7513]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2d19:7dae:86c0:7513%6]) with mapi id 15.20.7159.013; Fri, 5 Jan 2024
 14:09:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240104235232.GA1327160@mdroper-desk1.amr.corp.intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
 <20240104032150.118954-5-gustavo.sousa@intel.com>
 <20240104234831.GZ1327160@mdroper-desk1.amr.corp.intel.com>
 <20240104235232.GA1327160@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH 4/4] drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 5 Jan 2024 11:09:37 -0300
Message-ID: <170446377782.163223.6155137475069423882@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB5107:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e3e5471-d646-48aa-c57a-08dc0df7f6ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rBgvtUPllSH2lIPoh7MIdlDFT/huvzwYSisErr5xv62Rvu90IoOoXBb/AqmxcfwP4KA+tZUvSXc3TbnHSy4p4bd2HraLLZMxNbtGANNJ7Wq9ARAjhBuk0ENmbbRyVq/Uo8r/GBI3xaVbmE+IgWfCQubHp+aWhkZd274iTtxZy//PRu8Nm1F5oXUcuXjrWMwxTKGG3+RQv2z9cXm8/8/dBcXntJng19tR/FH9Dw/698zXGk8ns9O7CQYK4yKopD9cyPjYG7FxRpJSV3kFasTxHySrVF2WmSyzTCG+DWaFSttivbndbSesEIjdTtwLHOwpcXQXiBKuQJIIyB6pmumL1E4GgQjNeF0kQpwZkECrYd5WveZGg8AyhM9cAf+87Ancem44NS8QQNtZ6XPdGrXNjJyrKZb2ZYSM7U0hb8Befe8vgNCoaLRVufoUHYKdGyKKGtS9s7hSU1Vk2Dqpz4uWOoTbSmoHt0jyMTRuk9yOPbUEjEX9FLERionvYRodrJXLTdcZMUmg1nNg3+yOnTPwr5z3ae4iJ9K9pahUW1zVLl+bBOBVLESG1Hsrnn8NRLHX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(346002)(39860400002)(136003)(396003)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(33716001)(26005)(6666004)(9686003)(6506007)(6512007)(83380400001)(4326008)(8676002)(8936002)(6862004)(316002)(2906002)(44832011)(5660300002)(6486002)(478600001)(6636002)(66946007)(66476007)(66556008)(38100700002)(82960400001)(86362001)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1c4c1puVjNZOWk5UjJpaVdvSk45d3VaZS9kZE1HMkg0c0M5UlQybWV0d3dH?=
 =?utf-8?B?eEo3UjliVjg5ekh4S1FEYmh3SmRoS3djakJZTzFEZlhxLzc2MlZ1a2VwVUZa?=
 =?utf-8?B?VzV6UzBnaWpyUlM2VnFQRzRhUElycWxsaHljVXFxcERRWUFrUTFFVlZhcnd3?=
 =?utf-8?B?ZGFpeExQVEpjV3NIUmpDaFJicE9oeGh2WDVRRUZoZEVYUWVNYjhUSTFqMUFF?=
 =?utf-8?B?SFRubHZxMDZ2VzM3eHRhWkZyOUdOT1ZoTlJFQ0RLUXd2NTJJMjZSbmlxc0o2?=
 =?utf-8?B?c0gwcU1kYnlBU3ptS05RYUZYQk1MOXF6RTh4dnhndjlicDZNUXAybzRVa05t?=
 =?utf-8?B?VWEvMjg4cnhQd3ZiNmZCTTl3a2Rta01PUzIwam9vTEtYdDNVa2ZtbWdQV0Vj?=
 =?utf-8?B?Mng2bFlISDFzeVpCeGdFcHIvdDRLUDlIY1YzSjJUbmtWWE1DY2JxQldFMWlY?=
 =?utf-8?B?N29KTjdwRzNIdGZCWkdDRVowWHVXSi9RVDJKWXk0d0tqK2J5SngrQkZKMlo4?=
 =?utf-8?B?UDBMQ3dqdlNnRWlZbTEwQlVHQXVNUkdUY29UQjhEcG93bXkyV3l0VndtUXdQ?=
 =?utf-8?B?WVdLYXQxQ05JVDFNZ2ZKR2UybDd5OUh2L3o2dFIvNVV6QUJQUmpLb3g1K2dV?=
 =?utf-8?B?cmZXT2hPYTRGZ2xOcTVobFYzblVMWlRsRVY5UEEvMVpXekczZmlDY1Z1NTVh?=
 =?utf-8?B?YlR1Rnl0K3czQ1RpcGpkQU1HK3ZSc2IwOUVMQ1lZb29kLzJGc20wcnpsaU1a?=
 =?utf-8?B?bGhSNlcvNElsY2JQMHZxZWpwbUxGWDlWdXpNQ1RwQjM1bHc1R1J3ajFONE1l?=
 =?utf-8?B?ZHdBbGo5aldyc2Y2WHQ0MXpTTDVORkQreU42bFRDTTFpMWNMd3BsRnh6bWYy?=
 =?utf-8?B?TXQ5dHV0QmRLSE90TGU2RkRIRnRjQVdhNnAxMVFndmZqc2hmWm9SNGI0SmYx?=
 =?utf-8?B?T3AxRnMrVWxPY0IrYzhlaG1aSVRNbU9ubUtWMmN0R1EwbW1Ra3ZUVG5NOFhH?=
 =?utf-8?B?b1FtVHBXVjBmY09oNFlqdU8vZGgxT2k3Y2ovSmtySDkvUWdmcVRTT0xhN293?=
 =?utf-8?B?dVdMTkVialUySjRvc21YV0NRREZFRzlzeGZzWkZnUVhMUlc2d2hibmxPVWpY?=
 =?utf-8?B?ZVZxNWVTOTRwbVByOVd6ZVlXQ3I3ODlTTUZ5WFVFeXhFM2ZRakt5M1BndjdS?=
 =?utf-8?B?UU1FRTVRSndMQzNKVE5FcDJBd09PbDJTUG1ndmE0L21sS2xEMGVZaStxb0hs?=
 =?utf-8?B?SVBKUWQvVWVtN1E0RVNpRmxJSGw2c1VLT2o5MTlhTW00RUptd3REcDhObkNq?=
 =?utf-8?B?c3ZGVDRaS2g0ZzRqKzJ4eWg5cThlOW5aQThjUkU4cU1tUFJvMGFrQlhwY241?=
 =?utf-8?B?MnVRNmxtbUI3M0llL0dqWGZUMkhYNU4yektBVUJ3ZHRKUG5UZnIzcHZ5Smgw?=
 =?utf-8?B?d2tMVDFwSE5Ea2NQQ1N1c1BrQ0dzWEpoRFNwWWlhcmhudSs0Qk1RQjdiS096?=
 =?utf-8?B?RnBhNUhYSDBFZFJSbmQ1UWc1T2RwZC9CYS9xTTBHa241ZVN6b3N4LzUzbGdu?=
 =?utf-8?B?Q1BqQVF2QUtUMzVDL1ZkTmdvUFZ5SE1NUU5jbWhxNmN0djBoUGQ4Yjk4MGx1?=
 =?utf-8?B?clZsUFE1aGt3Q3VBek9vRlpLR3A1empEZXFFbmtaL2wvRlNUOG0vamJFNlNW?=
 =?utf-8?B?TVc4OVd4aG4rNCsxRGgrYk5YTHM1N0dLVEpLckZhcjhFWEdnbW5nTUd3R1I4?=
 =?utf-8?B?RllVdWlBUU9KSmhRTHp6bDlaRElwWDRzOFhVK3VhdUgxNU5JNGVBdnVzYzBv?=
 =?utf-8?B?c2pEUTBNYU1BbWhLNC80SHFUc2pKVHdubWFib3RtOXdNeElVUytNazZRVDN2?=
 =?utf-8?B?RHFXL2tlb0FnNVBJQWYyWnlSamlRYm1CYWh3NzViL292U2dxUnhWTitjaUs2?=
 =?utf-8?B?Q3Jja1V6L2xyZTlJUm1KckFtcTgwSnI3SHhHN3BNUUJmdkpPSFc0TmR1R3dF?=
 =?utf-8?B?M0pNRmpiSGpPZEQxdE9DMWh4d3hyQjZwTncrRm9Gbm5SU2tXbmYxQmI0cmtJ?=
 =?utf-8?B?MG5oZDlhZWptQVVXUFZwazJyaEd0SEdMM05laDB3M3FpUjQ4U1JlMmJIOWhv?=
 =?utf-8?B?T0FSa2dpZ1pGZ0xYK21QZTNLNlY2R0NWeElHaEZtRjVmYkorZzNUUWM5ZHU0?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e3e5471-d646-48aa-c57a-08dc0df7f6ac
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2024 14:09:43.0229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YiywiHFwPQUelkwIvYxm+MHz6BzyiQYO0Mrf1h2lH3etzjHwPLh98YsWGT9UsNWySEuDCZJpGZbgN+JPQOV9nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5107
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2024-01-04 20:52:32-03:00)
>On Thu, Jan 04, 2024 at 03:48:34PM -0800, Matt Roper wrote:
>> On Thu, Jan 04, 2024 at 12:21:50AM -0300, Gustavo Sousa wrote:
>> > That's the function responsible for deriving that register's value; us=
e
>> > it.
>> >=20
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>=20
>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>Forgot to mention...I think it's a bit jarring when the commit message
>starts out referring to something in the headline ("That's the
>function...").  It's probably a bit better to just re-state the function
>name in the commit message again rather than assuming both get read
>together.

Thanks for the suggestion!

I have sent a v2 updating the body of commit messages, not only for this on=
e but
also for two more patches. I have kept your r-b's. Let me know if that's ok=
ay.

--
Gustavo Sousa

>
>
>Matt
>
>>=20
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 +++------------------=
-
>> >  1 file changed, 3 insertions(+), 23 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/=
drm/i915/display/intel_cdclk.c
>> > index fbe9aba41c35..26200ee3e23f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > @@ -2051,7 +2051,7 @@ static void bxt_set_cdclk(struct drm_i915_privat=
e *dev_priv,
>> >  static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>> >  {
>> >          u32 cdctl, expected;
>> > -        int cdclk, clock, vco;
>> > +        int cdclk, vco;
>> > =20
>> >          intel_update_cdclk(dev_priv);
>> >          intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw=
, "Current CDCLK");
>> > @@ -2076,6 +2076,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_p=
rivate *dev_priv)
>> >           * so sanitize this register.
>> >           */
>> >          cdctl =3D intel_de_read(dev_priv, CDCLK_CTL);
>> > +        expected =3D bxt_cdclk_ctl(dev_priv, &dev_priv->display.cdclk=
.hw, INVALID_PIPE);
>> > =20
>> >          /*
>> >           * Let's ignore the pipe field, since BIOS could have configu=
red the
>> > @@ -2083,28 +2084,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_=
private *dev_priv)
>> >           * (PIPE_NONE).
>> >           */
>> >          cdctl &=3D ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
>> > -
>> > -        if (DISPLAY_VER(dev_priv) >=3D 20)
>> > -                expected =3D MDCLK_SOURCE_SEL_CDCLK_PLL;
>> > -        else
>> > -                expected =3D skl_cdclk_decimal(cdclk);
>> > -
>> > -        /* Figure out what CD2X divider we should be using for this c=
dclk */
>> > -        if (HAS_CDCLK_SQUASH(dev_priv))
>> > -                clock =3D dev_priv->display.cdclk.hw.vco / 2;
>> > -        else
>> > -                clock =3D dev_priv->display.cdclk.hw.cdclk;
>> > -
>> > -        expected |=3D bxt_cdclk_cd2x_div_sel(dev_priv, clock,
>> > -                                           dev_priv->display.cdclk.hw=
.vco);
>> > -
>> > -        /*
>> > -         * Disable SSA Precharge when CD clock frequency < 500 MHz,
>> > -         * enable otherwise.
>> > -         */
>> > -        if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
>> > -            dev_priv->display.cdclk.hw.cdclk >=3D 500000)
>> > -                expected |=3D BXT_CDCLK_SSA_PRECHARGE_ENABLE;
>> > +        expected &=3D ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
>> > =20
>> >          if (cdctl =3D=3D expected)
>> >                  /* All well; nothing to sanitize */
>> > --=20
>> > 2.43.0
>> >=20
>>=20
>> --=20
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
