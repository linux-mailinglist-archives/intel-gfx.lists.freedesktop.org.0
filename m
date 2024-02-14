Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F0B8553FD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 21:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB44F10E2D0;
	Wed, 14 Feb 2024 20:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D6NuF7mO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D94F10E16A
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 20:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707942659; x=1739478659;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=FL4BFJM0zdwLCEzUXoY1lmYNhoyprJ76H+46Oqx0Nr8=;
 b=D6NuF7mOgThDNJ0Hs5gmxKMU3vuDzQllXuJoYVfRvawxROWRQIv09o8w
 VuMHv2d2r+GMCQk2tNLrYgBaHnI7EmhpU3K8S44LHhfTeQMVmf0yluTel
 ygmUrzTew1I64ujg376ejdae8EHdhaDWTzWnY8+fmZ9ZG/+EEVCnF2u11
 BJIJJgn6QhWOgUI0BbFp9/iIrBZG1EhQ4bY+nYqWRAX0AzlxRp9vuB3DM
 qFu1pl7ZwPXOT0FAoYnBtg8vwsoFBBSyNDc0komKA9FLIKClgpsSgp9rX
 gYsVaz7K9hhBcORmtX60RFbYRy5aMBI6b12xYciWxVCJafL4TsV4EQ5k/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="27459676"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="27459676"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 12:30:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3289233"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 12:30:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 12:30:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 12:30:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 12:30:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 12:30:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BRbmA9i08PMhFLs9Yj4IPpzUkotjNNfxD6kvOGuWM9XV4pXWfFgrjHGmSrRSEBjA45AoLOOd8XL8boGnbfW9WaAcELWUmKNyp7UW8Wy9NSdOkQ25kgleexarZsV9R59FoV8X4C03YDZ0wJEpIjVFEF8D7YLr1Ew5ktbD4DwYCp5uL9bG4P1TmF7r/4AUns4LH3vpeaothjSJEQqK6G4YSNGSXf+6Ua1nbmHdesSTDrmnHuJakGzKfeetZiXgnguhDnKQCuOWIeMCoZJWAVRlMjsGSlVs+OikKrmfmkcuW+xa2avfJ5dAgiJOH6uUrDwjlQqCpfXWNMQKeuRlURlVzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EDLQWaLrzL6ByVEGRbkaBbxKpBlXs1ce5ivKMw7+eYs=;
 b=ktS+NV8AV2dWNIU/T3leRwEGyXyT0fMq94R036Luf/kPSrvz1Kg/88jW4FxrB+EWAENNnz+wDAxgl1z7yCguuxaElfMZY3DKLAICdGq8B387udKDDgsEo9Tqz7Q/cSxJ+zcCAoINIcx4Uk/QkaqF8apjBAK9L3WBTcLkQEsRF1uBUs0eZf0K5NvobvPYdQMvRgA2r4U8+4Y0kSxX7kFp1mtYXhU11nuheucLEtj0b3+keV+VjtHcDfQXXQ7avupf6dmZbhb/seACZHar5z2Eyofk3i2qlG4Q9iOJ0el9tGZDkfnbbOFUiOIcZtAxKhUVza91YSSTKipjJeEiLvddKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB7019.namprd11.prod.outlook.com (2603:10b6:806:2ae::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.41; Wed, 14 Feb
 2024 20:30:52 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 20:30:52 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Zc0fdzp0R1JIVPFE@intel.com>
References: <20240202131208.453298-1-gustavo.sousa@intel.com>
 <Zb1JbZlhjxXQKhTq@intel.com> <Zb1LKnsADQI_i2a2@intel.com>
 <170696713830.1816.14943301562714458724@gjsousa-mobl2>
 <170794132876.56490.13604292375176413950@gjsousa-mobl2>
 <Zc0fdzp0R1JIVPFE@intel.com>
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 14 Feb 2024 17:30:46 -0300
Message-ID: <170794264623.56490.16200618292367756008@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MWH0EPF00056D1A.namprd21.prod.outlook.com
 (2603:10b6:30f:fff2:0:1:0:17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB7019:EE_
X-MS-Office365-Filtering-Correlation-Id: dcaf17dd-a24e-460f-175b-08dc2d9bd650
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t898U88X+L52xbD3A9HCW9hv8bDBnyzyvx71FThQ51zvmJ11pAC7wqRJ89eUkR2yBj9LCt08Wwg6b+f9AoeYljgciWZWh5w+AzGnZCLadv8DgbRGd8Vmkjv2f1/Tr6sD1qc0ElRqM3xXdOxodJqjOasxPTlczfXpP0H83E54/ifo73cFkSOituHsPLvOQx/rbeG8qCw1vZRrieZnh+JIvK7C5NbUhMN4q2cGClS1ouF9iz6htpgyYqN9zo9YTwiFpAWP5selciRnlvH3MBGAE6B3zGaQJDttt/+hufkjMMGD3sHCzwlzQkM/f/i/bsBorbDMIVvFLO0XAvvPH8a1yeWqBf0AD1bg4lhdo7VLQIOlGSUZPR14DUEd9OqEw2FFoG5hMuWKQoVtGs6VBuKJx1AaWm3d3BRruMhF3qQipm9V/d9g8hm1Zvq0poGYZML+EMVTrFmM8K9k5dfpyr/1lx70ghdMKByh/dFVJoFzA0Z1ngU5gc9B2Eu6nvw3oPC5tD2Y+qVgF4RtRiI1Vu1Hj/wfUsg8Wgy0E98Uy3daKqU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(39860400002)(396003)(136003)(366004)(346002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(33716001)(966005)(6486002)(478600001)(6666004)(6512007)(86362001)(83380400001)(66574015)(6506007)(26005)(9686003)(44832011)(8936002)(66946007)(5660300002)(2906002)(6916009)(66556008)(8676002)(4326008)(316002)(66476007)(38100700002)(82960400001)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGZGVy9PUWJuL001NHVZZWcxdi9QMW5RUWZmc21pUnU5YUNLRzFhWnd1dUJV?=
 =?utf-8?B?U2JoaDJ1eHNvaVZ3MFprQ3h0ZktuK3NDeGUwcWRCQzEvYjd1bnhwcnhuZzlF?=
 =?utf-8?B?OHcwbmJER09jVm45ZUJ5ZUt1Tk8yNXMzMGdtd25FeTU4clhFOUFwa1NCMElC?=
 =?utf-8?B?M3lPOHJ1NmJuMlBXZzcvRXAvblAxYXU1MHZjN2dRaEtaekY4dHRKbytCc2VI?=
 =?utf-8?B?OGNyM1FYWmtxOWd0ZE9OVDdtN1ZrK1pmakh6NXJtbktpZXhMWnF4SnIySzdj?=
 =?utf-8?B?ODNHZ2QxQy8xb3B0OFpNYXdXQ0pxU0hmL0xjbjJtZWhVM1pteUNXS0lzMkRL?=
 =?utf-8?B?TGYzMTV4RGt1RkFsMTRDTTFQZGlVNnhLTVdOYk1QRUFpZ1Z5Vi9EVFJzcVlI?=
 =?utf-8?B?NzA2bjJrUW9FcEdQWkpWNS9DWit1L3hPWmtHN0JCS1BPQ25lY2dzc0hDU05k?=
 =?utf-8?B?MEZUTTlqckdzdHBJeEt3elN3OGY0K3crcklaWG8wQ29vNUNXQ1cyNjhvR1Ja?=
 =?utf-8?B?VVhSUGI3R1pkU1J4N3cxMkZLZng1cmJXUGRkanNKNjR4b2N5cGdCMkowWENn?=
 =?utf-8?B?YjduTGFUU2VUL3lDcm8xWDQ1SUJUSFFRSWpPYng3YkhvVDdkMkFRMmx2RElL?=
 =?utf-8?B?bUlJVmM4eXZkV2ZMR0FtT0srRUVFa1hFeXU2NGNyQ0paZUhvblp4V2hLdnAr?=
 =?utf-8?B?Wkw5ODhIa0cxVkllSWFaMElmM3BmM1VFT0Q4clFHQ09CNHdmVDQ5ZTRvKzFO?=
 =?utf-8?B?K3VGcXNHWkdGUzFGZm5sQjh4L2NDSE52THdHWDYwVVJ1S0E0RW9taTBCRWtn?=
 =?utf-8?B?T1NZWTc4azRRREpKSkdib3B0eVJrMVppUGt6dW5PWG1xN1p2cXJvR1V6TWl4?=
 =?utf-8?B?cXEvdTVrVEJCWUlSTGFCQVFNQXRhWmY0T0lwb3ZnNnBLTUdEUnhBSFE2YTMv?=
 =?utf-8?B?TUJSWEhsdXk3K3dQUzJBRFNTSXZ2VmVqcGJ5NUtaN05iTkxWZVBxMHhySkJJ?=
 =?utf-8?B?ZWdHdHVYS1U2QnVrblBjTWdtQmQzSVN6eWlDUlhIRHZRdDR6bGwwNzJrU25w?=
 =?utf-8?B?OGtTV2NBVURaNElhMFVIUXRzTGV0VUhsVHl2cTdseDd2N3pENHQ0K3hScHhG?=
 =?utf-8?B?VWpFM3dsZ0cyOExUUFN0ZUwzT1l5VnNyblZiU09UdUpPTGFRcTRJREJianR1?=
 =?utf-8?B?cXp6OFFmMkVkSlE3OU9ONTd3WUoreFlrVC9wZHFjUXlsTjl0MkxaWmJlazBn?=
 =?utf-8?B?Tmd0MEFhOTBlVVJ3Q2V1a0JkK2p0YkszWUdLM2Q5RWI2ZFFhUERRT3FBcDlR?=
 =?utf-8?B?NVZpS3RkRytCTFg0cmpQckFrb1RkY2lIMGhKOG1halZtcXZKWTY2aXRJbzcy?=
 =?utf-8?B?NzRENm5NQm93anpUTHI3Z1B3V1JZYk9sd2U2QU8wYjVoMjM5NTBweEkzUnhr?=
 =?utf-8?B?UVcxNVZSeWk1eVYya1ZYd3FSOEtoMnFNZWIraU1IZkU3bmRjY2o5eEh6TU1w?=
 =?utf-8?B?SGxlRDRVV0RuanpLZWFjRlNYT2VIdVh2WDMzdy95d3ZKb0NvaGlyb2hRN0lD?=
 =?utf-8?B?MVFBK0NlTlJhVnpDQmxQT1liMTFLRUFjNVdRSVFMbVREaXl0ZFZRdjFDeUlw?=
 =?utf-8?B?VU11MlRUNml4S0dqcW1RTUJCUUdUNFJvZTUybWR6aEpIaXNnSEFKNXJyQTZa?=
 =?utf-8?B?WFRuVWJWTjRXMUVpTmk2QjdyMWhBOFFmTXhseWdrYzQvQTU3azgyZFJYd205?=
 =?utf-8?B?ZXo2UTRUSTRpZGR1dFNTbnNiR1R3T3hQVDNUWW9RZlVlK0hmSjNGOVdmNnVB?=
 =?utf-8?B?WGZjdzI5WGk1U1JqWStDeTZ1MjdWUmZQRHJYeVZ4MEwxS1NSbms0Z2VZWE1O?=
 =?utf-8?B?dlNiL25lZVZkUXI3STJhQ3FKdVloVVBnRWxpbWRTeGRleklxbERnZThEbkxi?=
 =?utf-8?B?ckM5cmt3cEVEZVllYmJ0ODBFTDVySkt6bVJCVndpVis4TStQdDZickQwTHRq?=
 =?utf-8?B?WVpsb3dnTzM2ZFZOeDJXR1hXTjdhVG9zbEpTcmtwZllDNW9pZVNjMEE3TzlI?=
 =?utf-8?B?a2NVOVM0V1pMVWFPbm8wc2F1eDJxRGhzQk5wdU1Ha0VVZUVXYmpWV3d4VGFt?=
 =?utf-8?B?TzVuSlNmckhNZnVBKzZ6RUpJbk1kV1Zaekp2QlFhc3VkWDlWR1N0Wm9RYjd5?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcaf17dd-a24e-460f-175b-08dc2d9bd650
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 20:30:51.9489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UKGJ5sfobgx3XvQDu8WIlE1GpzIORjoW9sdvdNSngJaCU9Nd317WVFinnJIZEaYpyM78PD+Xk9xOQHc8iaWkYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7019
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-02-14 17:15:51-03:00)
>On Wed, Feb 14, 2024 at 05:08:48PM -0300, Gustavo Sousa wrote:
>> Quoting Gustavo Sousa (2024-02-03 10:32:18-03:00)
>> >Quoting Ville Syrj=C3=A4l=C3=A4 (2024-02-02 17:06:02-03:00)
>> >>On Fri, Feb 02, 2024 at 09:58:37PM +0200, Ville Syrj=C3=A4l=C3=A4 wrot=
e:
>> >>> On Fri, Feb 02, 2024 at 10:12:08AM -0300, Gustavo Sousa wrote:
>> >>> > Looks like the name and description of intel_cdclk_needs_modeset()
>> >>> > became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modese=
t for
>> >>> > cdclk changes if possible"), when it became possible to update the=
 cdclk
>> >>> > without requiring disabling the pipes when only changing the cd2x
>> >>> > divider was enough.
>> >>> >=20
>> >>> > Later on we also added the same type of support with squash and cr=
awling
>> >>> > with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squ=
ash
>> >>> > when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
>> >>> > squasher to be reconfigured live") and commit d62686ba3b54
>> >>> > ("drm/i915/adl_p: CDCLK crawl support for ADL").
>> >>> >=20
>> >>> > As such, update that function's name and documentation to somethin=
g more
>> >>> > appropriate, since the real checks for requiring modeset are done
>> >>> > elsewhere.
>> >>> >=20
>> >>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >>> > ---
>> >>> >=20
>> >>> > One thing worth noting here is that, with this change, we are left=
 with an
>> >>> > awkward situation where two function names related to checking cha=
nges in cdclk:
>> >>> >=20
>> >>> >   intel_cdclk_params_changed() and intel_cdclk_changed()
>> >>> >=20
>> >>> > ,
>> >>> >=20
>> >>> > and I find it weird that we have intel_cdclk_changed(), which chec=
ks for the
>> >>> > voltage level as well. Shouldn't the voltage level be a function o=
f cdclk and
>> >>> > ddi clock? Why do we need that?
>> >>> >=20
>> >>> >  drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++---=
-----
>> >>> >  drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
>> >>> >  .../drm/i915/display/intel_display_power_well.c   |  4 ++--
>> >>> >  3 files changed, 11 insertions(+), 12 deletions(-)
>> >>> >=20
>> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/=
gpu/drm/i915/display/intel_cdclk.c
>> >>> > index 26200ee3e23f..caadd880865f 100644
>> >>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >>> > @@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct =
drm_i915_private *dev_priv,
>> >>> >  }
>> >>> > =20
>> >>> >  /**
>> >>> > - * intel_cdclk_needs_modeset - Determine if changong between the =
CDCLK
>> >>> > - *                             configurations requires a modeset =
on all pipes
>> >>> > + * intel_cdclk_params_changed - Check whether CDCLK parameters ch=
anged
>> >>> >   * @a: first CDCLK configuration
>> >>> >   * @b: second CDCLK configuration
>> >>> >   *
>> >>> >   * Returns:
>> >>> > - * True if changing between the two CDCLK configurations
>> >>> > - * requires all pipes to be off, false if not.
>> >>> > + * True if parameters changed in a way that requires programming =
the CDCLK
>> >>> > + * and False otherwise.
>> >>> >   */
>> >>> > -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a=
,
>> >>> > -                               const struct intel_cdclk_config *b=
)
>> >>> > +bool intel_cdclk_params_changed(const struct intel_cdclk_config *=
a,
>> >>> > +                                const struct intel_cdclk_config *=
b)
>> >>>=20
>> >>> The new name isn't very descriptive either.
>> >>>=20
>> >>> Outside the cd2x/crawl/squash cases we stil have to consider
>> >>> two cases:
>> >>> 1. cdclk frequency/pll changes (voltage level can change or not)
>> >>> 2. cdclk frequency/pll doesn't change, but voltage level needs to ch=
ange
>> >>>=20
>> >>> And that difference is what intel_cdclk_needs_modeset() is trying
>> >>> convey. And intel_cdclk_changed() tells us whether anything at all
>> >>> is changing.
>> >>
>> >>intel_cdclk_clock_changed() is perhaps the best name I can
>> >>think of, off the top of my head. But I'm notoriously bad at
>> >>naming things so take that with a pinch of salt.
>> >
>> >Sounds better indeed. And I think intel_cdclk_changed() would be more
>> >concise, but that one is already taken internally.
>>=20
>> Hm... On second thought, I'm not sure intel_cdclk_clock_changed() would
>> be very accurate, at least with the current implementation. We are
>> checking not only on the resulting cdclk frequency, but also on
>> ref and vco values.
>
>That's all about the clock.
>
>>=20
>> Although I'm not sure if that could happen in real life, but the current
>> implementation gives me the interpretation that, in theory, a change in
>> ref or vco could happen even if the cdclk value did not change. Or are
>> we safe to say that checking on cdclk should be enough and looking at
>> vco and ref is actually redundant?
>
>ref never changes, vco could in theory change such that the
>resulting cdclk stays the same, but probably no real world
>examples of that.
>
>But I don't see any point in putting those kinds of assumptions
>into the code given that it wouldn't provide any actual benefits.

Alright. Thanks!

I've sent a v2 using the proposed name:
https://patchwork.freedesktop.org/series/129908/

--
Gustavo Sousa
