Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 286035EC135
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D501010E8E1;
	Tue, 27 Sep 2022 11:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA0510E285
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664277971; x=1695813971;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=aF2xzUhC5Ctp/nYUoeWHbytFluzaORC/Dx52z9FmUfA=;
 b=MUEFPLvj3oVpDBNf7UoWAvAzLTOZenmau6k7m8caJ691m0spHq6NPeFX
 tK5xQduko6Sn95IuATmbBMt3YoVXkQtqkefgQT1gJYJyH+A5SGXz0CROk
 0EbXnhr9ut46RxhpEy2btH89P7oQp/oOKHQI5SgbsMB61J/H2wy6sI8LM
 8clFF7nB7rkxe8qZ72LuY9+cHvq+HgNBhylELBQz56woLE1BviQGlkSKp
 XWQI/wfP8aeMF6gb1jgnLEzfsbpL63vZCL1YcLfFhctZrfCUYtmPfMkVe
 aQf3jhJhO04O0nXbtjdApeeIbNC/gOoIqZrN49IyXrPYNb4B/udECjlSk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="302201796"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="302201796"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:25:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="683954098"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="683954098"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2022 04:25:58 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:25:58 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:25:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 04:25:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 04:25:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HGp/X5TkwYWacQ4rI7tLNpR4ZlQkv1mEBDMedg4b5W2Rgq9C0ZGj2CXoJTsXbbNlc/y37P6bKi9DjO1I0JDUOlxk8m6y9V3IH5/HHiR7aHUPYXdkfoDds5gUCdMQ8QV8L8D5Y0umyVRT/tANE/iSDlrqScPX7gevu17Ho0RZaac52sq2J2yrxU6K/gipHZtXo43pfmsvtCq3zbMc9QPNn1MYFq18CyoNMtxmnnXB4r1CfqJB+HQnQLA9w33L9NS8ffSF/s2BGObqXwOcnPNsAELC+oZGwCQB/dWrG4sg48mAhH9LwKtuniApyOCrpXf6QCnxVi5rev+wK86jFEjEFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrXNAG7aXX8MWNgRb5th5YweubLsMdm2VlgD+L8yP18=;
 b=fZIy5/zJPxRebSryYfL4oJZVLhtXIqbrsIgbVMdSOLRLDK8j3FdKqsoeLDUHTwHE3qtE1V7yIDh16JYkegETLbR0Akw8Nm9W4+K1pgZ/dKLwYmH0aqQ0cX4iwMBrSWNPJ7+uxZCTEksMWh18/7an34Q8sI9Ad/AEpqSUkLvuaTVteHSkZmgl+xYdVf6GL8aFXRXlY3Z7wL2XBmjypfuOOYI0yB+RXF6giKJRlvHFBDedWpbnzBDsuuMhXK5Pub7RAdpCASGQlk9TIVjjacXT6J8t4Fd0KurPXxPN3MlEeypKfNWblvI+P+DWA34/BWdNfPZeCGBZGGjb9dKFMKNPfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 BL1PR11MB5333.namprd11.prod.outlook.com (2603:10b6:208:309::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 11:25:55 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 11:25:55 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 27 Sep 2022 16:55:41 +0530
Message-ID: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::7) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|BL1PR11MB5333:EE_
X-MS-Office365-Filtering-Correlation-Id: de8d65f9-c126-4dc1-1f95-08daa07b0ad6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cAtqV6nDQs75tuz51i9uUowm3Zhf7s3Itq9sVuJ5nUYGAhnnfPsWG2tBl15fAMkweEBMjMez8vN7qtfUVN4xnzImzsGCBvXS9cnZn2h7V5rVb3D4YNlBb2uPwPxmTOsvgUK9vIKhbxsPISDXxc8/HBHXNRB4fiS5O2HvOXutHXmk/gu3VSo6GJ8m9x5rteLyJGN4znwWrli8ckpBtvZO7kd0k5MWRr/cWM8vIRBYM2E3X4i3vqSGwNLc7d2lts+BA1SoiWI8wJOniQzzMQTnKuJ24eMj30K7d5QLA3Dp2emEZbHwTn+ExSKUC6cXSn9jGbu75D24XN+UtLbqqCAzdxPoqtE0aPFOo8eMNOcsqM8ZG0uRVk6j0ODbQHLbb6V4lhC9lOUs0Cag1pNDj8tMZPg3L2G0/oOq5r5REum0HjXqekrP69DbVGP3DWajwsd5vLacbIICVc+mt5SLXCQG8i55TygHKAXK+4Nf6HqLRHzQXAhKe/XZrtCc38FcKAqHgTw3yUaRr52vRHSAvpuTeV/R+kunDBxvXs8B5JgjPttHlprd1+Yo/Q9vXogl9GNkq4e98afAPdV4tojbEoLzyB3PMKtUaerF1sRKvcmnWzSgNldweluQpcyf67/5gjCRdVDOYfm8utHVpn3eO1s/akce9BRXO6Y8RtT9BDHZ97JO4SHRoDdl5yb2KQwoYEV6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(39860400002)(366004)(346002)(451199015)(86362001)(8676002)(66476007)(66556008)(38100700002)(82960400001)(8936002)(478600001)(6506007)(66946007)(6486002)(41300700001)(36756003)(44832011)(316002)(6916009)(83380400001)(54906003)(26005)(6512007)(5660300002)(186003)(1076003)(66574015)(2906002)(6666004)(4326008)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWp5S0VyY2NYbEwxVG1NUVhuSUZadUZuaTRyVjBXeTZNOTROdG5RTzB6alo1?=
 =?utf-8?B?bTd3cmh0WE5Bd0Y2VS9JV1IxWmhya2lPWWxZNlZZOTloNG1ZVW5PY0o4UVYv?=
 =?utf-8?B?TjlVUmdlYzhHcjBRbTRJZ21DbG5HakdzNlR6bTAxNjM0aFJTMEFieTJ5eW9H?=
 =?utf-8?B?NS9UV3J6Ykkzejg4VFFTUEp0OGdiRXRFcHpINU93TDdKTGhtN2h6bnFRM29S?=
 =?utf-8?B?SThoZEIxSzcxS3NzOUYyZXNwbDA1KzB4NFNsdU5MTXhxOS82U1JOS0tqUmpR?=
 =?utf-8?B?SEszN05xUWswREp2bHc4ZFZzaThVTENqbU44M1ZtQU5mcVhBWjBTWGswdnBY?=
 =?utf-8?B?QUxGZ2FBVW84VmVENDhzWXRUMi8yQnEzZ0QwMlBFSzNsZGtJWlZSQUxqOHlI?=
 =?utf-8?B?UW5IbU1JVDhGRTNqL0VmUzduWVE5VVhSMU1oV0hQL09QeGVjemdMZS95WGgz?=
 =?utf-8?B?YXlrcHFOeW54Rm11MTVGcEpkWnJNTlYzSFlHS2ZSNjFwcDRmV0puOWwvMXhi?=
 =?utf-8?B?U2RlenRDVVJNNTgyQXk0dUh0SjZobUZjNUNXOHN1Ti9CMDZBSGtteExDdEg1?=
 =?utf-8?B?dm82SWtpV2YyajFPTWRQQy9qY2pTRXBnVWp0ekVLZDFPWjUxcHIrVU9mSnla?=
 =?utf-8?B?Tm5XTVY3VHA1b3ErQ1pNNzF4YThDN0hSYjI0UXE0ZmZuZHhVYzFRNkpra2JV?=
 =?utf-8?B?WW43UVZZdWxxS2V4WXpPMjRkcHpCV0dYc04rM2R4QkN4K3hiZEZib2tMUXRB?=
 =?utf-8?B?U2JTQ1JTUFBKS211TTY4NCtjS1F4QUs4NUdQdE5yMUhWYi8vRUE5b3dSQXV1?=
 =?utf-8?B?ZWU1NllNSENNZE5jUUZTZ2Y1V3JJWGZ5UDkxaWlkcDQweld0VEJTajBucm1l?=
 =?utf-8?B?T1NFVFE2QXpFb1ZGLzRpdWVDV2loNnRXb3g5MHZDcytLYUJJanNXZVRHVUhR?=
 =?utf-8?B?ejI4RzNlOW5rbjF3QXZ4R0lySUdzeUhoOHhmRTl6VWdycWN5UGJkdHVmb2lk?=
 =?utf-8?B?NzRBU21Mc1FrV3B6aS9QWDU2Y0kvNkhINDREOWdyMklJUUlrWFl2OTA4Skt4?=
 =?utf-8?B?bldMZUEzNXFsQnhWdTVjR3BqckhUaEN5Z1p3cExraXc5U3lybldLRlN3cnpr?=
 =?utf-8?B?bHJHNDlLN253a3dKa2c4dmY1S1hxUnpsMk9RdXVjQ2dmbE85eHJsajRmU0hz?=
 =?utf-8?B?dUhlUkRNdDFNc014YzVkSWZaU1RLbVVEeFhxQ1d6MkV2dXZ0MW5aWktxbkk5?=
 =?utf-8?B?bGZqV2VSOHJkdEZrbDllOEQwMGxJQ0paSjJpeFN3Z3JJbUcxUU9zRUlTSmNU?=
 =?utf-8?B?ZHBlRnZLbjY0OHZodFBReFo4YVo5RHV0M3J3Ym5NMzNSNXpZclVlRzBWcVY0?=
 =?utf-8?B?VzIxSFU4c1JLaXhvZmVaWFV6OUlLbG1pUnEwUzI0QzZTZ1g5VFA5WTRKcUxE?=
 =?utf-8?B?bis5Tld2RXdLdmxUY2JZQXowMnQrWXg4d3pkaHFPcUgxcVYwTEF2Ukc1VFI5?=
 =?utf-8?B?UFJWSldIQzFEeW80OHMrTFg2TldDVVE0YmUxY2RHNXhPSHNYZWdoeEFqQVEv?=
 =?utf-8?B?MlhrTUJuakNiSlBlV0ZEWThQdmxZbEtwZXJvRUZHYUtpczFJNENQNC9CSUxt?=
 =?utf-8?B?czBQTWZIdjNRMlMzY3V5Vk5qWnJlWm50QWFaTmxhWU5XV3RURDF0Uy9EUU5B?=
 =?utf-8?B?SXVmdlQ4OGhOV0N1bFVwbnNuV1E2Y0NmMExGM0pFUFVoSEJLQi9pVDM1eFd4?=
 =?utf-8?B?WUlwTVkwSEljR0tkaEFOTGNXZDBvS3lvYTdrT3NuMWVEeTJYdTlGR2JUK0VU?=
 =?utf-8?B?NjdWNnUweTBsa0Q5a0xBWHVOcDJXMnJUUDhWdUJxei9kb09OMXQxZFpIK2Vv?=
 =?utf-8?B?VzgyaUNacEMwWjF6RXd6OUVqUWRJZmJsTGQrMjVOK2J1RjJuNkF1RHp6Nita?=
 =?utf-8?B?MUdPa1hiekZwM2VNclRMbDVyYjdyL3ljcklXR2tLL3FpeklweDdGTUVWZUpr?=
 =?utf-8?B?NlRVTjRLR1FHWS93MG43S3ZnSmZrWjI5WktWWFhxaVFwSEFxdEY4TDRDd20z?=
 =?utf-8?B?VXB4V3FXSW9CNzRlSTdHVHZqdEFFVU9tZmlxNS9WN2RiTXY3N05mbVBQZWIw?=
 =?utf-8?B?Yi9aeGhvQzRsUURQM2hSc2VDSGdSVXJTOG1YdzIwWVE5MHB5SlFMQy96NkdF?=
 =?utf-8?Q?lfjaxZDJCFsQIWfVTCcXiY0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de8d65f9-c126-4dc1-1f95-08daa07b0ad6
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 11:25:55.1291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dASshSIAbQY4XnX5yEOpTfGBRhDYTjJ5lTjIHtf6msnn/C9VE1qP8zSNZqXtJjTQ/UDx4sHXwUMiFxUFXfQ83Vl8rV1Vm4pLl3T6nPoI5iBapKVXHSosBSB/9V7HTB+y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5333
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v3 0/6] drm/i915/display: Don't use port enum as
 register offset
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

Prior to display version 12, platforms had DDI ports A,B,C,D,E,F                  
represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of          
the ports were in the same order as the ports. So the port enums                   
were directly used as index to calculate the register offset of the               
ports.                                                                            
Starting in display version 12, TypeC ports were introduced in the                
platforms. These were defined as new enums PORT_TC1,PORT_TC2... The               
later generation platforms had DDI register offests of TypeC and                  
non-TypeC ports interleaved and the existing port enums didn't match the          
order of the DDI register offests. So the enums could no more be used as          
index to calculate the register offest.                                           
This led to the creation of new platform specific enums for the ports             
like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those          
platforms and additional code to handle the special enums.                        
                                                                                  
So we want to make the port enums not tied to DDI register offset and             
use the index from somewhere else to calculate the register offsets.              
The index of the DDI ports in the platform is now defined as part of              
device info.

Series includes few patches at the end which does some cleanup and
fixing made possible because of unique enums for the ports.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Balasubramani Vivekanandan (6):
  drm/i915/display: Pass struct drm_i915_private to DDI_BUF_CTL macro
  drm/i915/display: Define the DDI port indices inside device info
  drm/i915/display: Free port enums from tied to register offset
  drm/i915/display: Remove PORT_D_XELPD/PORT_E_XELPD platform specific
    defintions
  drm/i915/display: Fix port_identifier function
  drm/i915/display: cleanup unused DDI port enums

 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 ++--
 drivers/gpu/drm/i915/display/intel_bios.c     |  7 +--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 63 +++++++------------
 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++--
 drivers/gpu/drm/i915/display/intel_display.h  | 29 +++++----
 .../drm/i915/display/intel_display_power.c    | 40 +-----------
 drivers/gpu/drm/i915/display/intel_fdi.c      | 14 ++---
 drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
 drivers/gpu/drm/i915/gvt/display.c            | 30 ++++-----
 drivers/gpu/drm/i915/gvt/handlers.c           | 17 ++---
 drivers/gpu/drm/i915/i915_pci.c               | 46 +++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  4 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 10 +--
 include/drm/i915_component.h                  |  2 +-
 15 files changed, 140 insertions(+), 153 deletions(-)

-- 
2.34.1

