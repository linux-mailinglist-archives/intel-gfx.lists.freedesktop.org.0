Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AA75F439F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0361910E00A;
	Tue,  4 Oct 2022 12:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B162510E00A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888036; x=1696424036;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=tQKkImpLv0Z13LfRr5w57mvarvlwWs6Cb/IgZ+xD22Q=;
 b=Yy5l8nY3J/dSEuDykklbKBZ7uEHS5JrigkXMLYiGlwgtxsuOBQ7g0TJi
 AQ6REihFuwCAz3nQoMM0cnPB01IPPlpSKpggKf5PS6b2RSP23DO3kyUe6
 wzmqeaAHs0Jj1EpXNCTvGvhYtdpf1wKOZVi5QOawY/06Vur/M7wypHF16
 hN4/WjmwNzWTptXvicVgPC+SnwgKMKv9cJe/JJXmu4BXj/5BD0kD3eh4Q
 YZ0a96T/bZl0fa3m1eWyV3luXlwFYOkpMcTauU/Fa2/Xa/lSyVgQB+5/T
 Hb8EGDmXGiP1N3e4VSUOeIzxkfI4j8eMVKtxB/aYyrBAue271vCRFqd1i g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="282612432"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="282612432"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:53:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="654759796"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="654759796"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 04 Oct 2022 05:53:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:53:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:53:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 05:53:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 05:53:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nS49GECkFeyXzL/EcBqJcdPY61zaHRL/Md6LOkBsf30wrStQfd5T/biytWJIV2cLHCKSW4uurEWpzyAA3cH9XOITj3hwKVP3SyowLquPAcOIULCs0kUeeuztZNH0WXnc6jxVeQhajwk/fcxqxkTt1Y9HI1y039ZzDdfRI4q7WoEQLYNW8EkaES9CklGKw441pWVGfgj7tHgD6kW0ot3WImKcDcf7rWWvyRccpBTriToq/SVHftVmmqyyoIgphq5h5JJ3NdnMErVRtWpJN4/NZYpfLmllOiPSYFIIi1NJCpYifBCjcnezV86QN6zALRjSyPmDcS388SQ/Qc3cMuHBfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OKnIEUw0MY6SVM+WoQk2X+9L4/NNNu/G3wEwxnHF9wg=;
 b=Qz4/0VV2QPPD+Z2ZbCaJZVKxhg8AiZmA7FYdMctLyTF4cXanAGgGTwSoV/lOnly+Qcp186Iqvm5dK9qqNwD7rphjKgDQWuyoPhy7SxgRDGBWHla0e7ReN06vQEwUn+EJ1johX3sh/0Yc4Hlse11UXmxcrgJUGc3rU2SZMFxqV7GnJqKX+0acwof7zpCZvpuCzrPygKM8TPa9MgiO8z54683CatDBb+thsSbkBIUZHzuIRwEKdn2ot1vkiOHhXtZ9JBeouAZqJ7WblkkVUi6aSG3SRRu0SbqjL2OGU4fzOSIhfqbCYlJgKWAFuG4HP9H/rps6tGO9WjhTegcWh6SCHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 MN2PR11MB4645.namprd11.prod.outlook.com (2603:10b6:208:269::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Tue, 4 Oct
 2022 12:53:53 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 12:53:53 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Oct 2022 18:23:37 +0530
Message-ID: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0238.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::8) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|MN2PR11MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: ef17af00-6f63-4a23-0d54-08daa6077dc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X80ewiVRX4aXQ8KXkRS6JqLBsBQ3h1xK7XiVwyb9q/7tbZGJrCyAiP4Y/CQwzaMNEVyn36RFzErRPPyb5nKPli4WSFZOPY+m7BeCOSZbASJLIKXTrChChiZPGit3W2waQSxrI1CVjgAEEwhGSkk72YzWpFDT+AEyLJQq3qsUUoiG1q5i/tcJM2GgEaZHsvsttzJawpINz6vmadMMB3jb7ZHcG7bAFk2XljLatPS/UgPpMtDYdIyiQ8hZPzWmmYJYcw8D6tTlBJJKGtUEHupGQI49bJH4ZwvobQdgtTI43NphCVs+h6Z9NiBbolo8EFBGsAoOXoEsh3l7MGRiFca+0vPjmB6+jZyEwzk6QrbKEz4BAtBKLMgiSYbq7XBzTmuSNwcf2IcAC0PkBh5wPw8G/AyfnASMa7WeN9J/pjyZ/kNS80r6l22QrjUIsd29sAkQb4Ny4xO8OxF/JmbUOju6KwkVkE4ygNgbWnnMFYjGgMKTL47rnne2YYwb0mqFGnaikh1NT4lveqGHnxBqe21pSss2nicBtpJRKT20QMdDrbdy65Q09WDudbfCu4cltRGlEo3w71Splt3LllCELL0pW/7sXzYJIx7LwPkFG2Qurt5gGpEXwf6L04kncfRDGjTAeY+Pw7ZqhYZXym1/bqPoTUFnmttbbWz0E92JQz+wBqS09lsvGOQHB9WS8eLMO11NmGZ7ybqfp5QcK2rhd+XITA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199015)(2906002)(38100700002)(44832011)(478600001)(82960400001)(36756003)(86362001)(66556008)(83380400001)(6506007)(2616005)(6486002)(6666004)(26005)(6512007)(186003)(8676002)(4326008)(66574015)(54906003)(5660300002)(41300700001)(1076003)(66476007)(8936002)(66946007)(316002)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGptTVdUK3BGcVhHUWI0Mnc4eXNMUGYwVU9JWFdzWGlIZ1FpNDdncTA3YXk5?=
 =?utf-8?B?cFlGcENZL1plMEdRc0FOOUJ5SitlWFJ3bUUzN1RjdEZCSU5jekpnSWFqL3Zr?=
 =?utf-8?B?VWs3Wm8xUTZORXhhTDQvcitiblRibWxLb1Q5QkJTUXVOS2FMbmowWVlNU0JT?=
 =?utf-8?B?MmZvSkhKbExseFhlaUJvV2htSWp2UjRrVTc1ZWlBZTBEVzZjQmxIcE96clpu?=
 =?utf-8?B?NGU4K001WFJyU293c2xVeUQ2RU1OMHR5dUo4VFl6R1YwcUcyc1NXcXlWWkdF?=
 =?utf-8?B?c1k1cW9tUVArdS8vVm5CL0JiczA1UUxSMlduUlZkdVcybVBwcWNITW04UU9x?=
 =?utf-8?B?MEVaM0UycHd1MXdsSU9uT3pDU3plVGFFVEUraWN1Njd5aCthWWx3SnBmbGx5?=
 =?utf-8?B?QnJlREdkczhNejJxQ1YyVHFkUDE2elloT2ExenFFUXlQd0NNNUNEQzIxV3I4?=
 =?utf-8?B?VXJYWmpnYXcyb1U2dUNMbncvRTlmV044WTF6L0Z5a3NBRFZ2OHFRTjY1dDNr?=
 =?utf-8?B?WHI1bWJkOU9URmR4WHl5ZjVIVmJyRzJLYU52Zzl3Y0YvYmF5SlNKejA1Q3N0?=
 =?utf-8?B?a3hYa2h0QXU2Z1dESm5uWFkyc2p0cTdiSXBEeHY2RXZmcXhMd1FRckd0U3R1?=
 =?utf-8?B?c3d5UEJ0eHQ0ZFZMRk1oN2FkT2dUZ1o1NnA2RUJKYWJzbmxlV1hEUHBNbkJW?=
 =?utf-8?B?a2ZHWDFTN1NpQjNtbnd5ZFdWK0ppeGVRY01KaUUwdzF5eC9LMnk5Ull1RXMv?=
 =?utf-8?B?c0gxSGNRYlVyZEw4RisrMnBkZGoxR2UwUmsrZnZzVXVJZ1dmM1ZuVGluektS?=
 =?utf-8?B?ZElzdmlIeVlJamgvT2hYMzJmVkx6TzZHdHQvKzFTcTRpVnV4Wkp4Vm5iVkhl?=
 =?utf-8?B?VkszK3AvcjNYeHl2eDIxU25RK1hvSG9sWHpLU3lpbTEvNko1MEZoRG13NEhT?=
 =?utf-8?B?YWZSNlpQRDdWbGJ4cnJrbWFvWURrOFNRYTBDOCtnWWhldU5LNTBxblRKbHR0?=
 =?utf-8?B?U1ErU2k2KzdiWEx6ZDUxMTEvZ1dRcGVUTDFMQzRvTUdYRmRTTzhYay9yWDBn?=
 =?utf-8?B?d1c3Z21xdDhsRlh1MHNDN1ZlNmpVcHg1UVQrekp5Q3JkS1F0YnQ5cGF2dy9y?=
 =?utf-8?B?QkpWaEh4TjhYOTMzTk8zcE9pVWpxaThKeW53K00wdUJ0NXowWDF0d3ZUc1li?=
 =?utf-8?B?dEgxUVVhN09DUXdST0JuMjFNUk9xVWZieERTSExMVlVhKzc5cHVLRFBSM2px?=
 =?utf-8?B?YVFDa1hLMHhMaFJpa0krYzZuU2s5MFYzVmdlQXBLQVhVMlpVVENhRHFORTdC?=
 =?utf-8?B?Q3JTa0hzZDcyRUNZU3BudnFMTTZxL0ZKVjNTZXI2b2swRitvSVhYdzZDVWdW?=
 =?utf-8?B?NHJVK0FmWUd1WTZYQUZieEFLRStQQ3R3RUROTlAySGJlTmVtc2NtWkxMVjVP?=
 =?utf-8?B?a290ZVBReTIzU1RVL25aQXNKOW1PaUxiMVVkejVXNm8zM0FxNmxiQWltV3ZH?=
 =?utf-8?B?djR0WlpzaWl2cnFEVmN2QWRqaGprUkRpbkV4S1llOHZJVUFwQWFhVW1zcG9Q?=
 =?utf-8?B?aUgwRmU1bTYwRTNkeEduclp3cUJwa2V2VlNwREJ5cGdRQVUrQlM2c3NZT1p1?=
 =?utf-8?B?OXJNOUViWnRPV05adzU0OEF6bjV3cVF1WTZRWkV3RUVBUGt0UU14Vmd0c240?=
 =?utf-8?B?Njc2THRNN2JvdHJJakdqUHVLZG8yWGNSRDEwSUdsSlMwVFhYK1VuZW9IK0Zr?=
 =?utf-8?B?MTlPbnRLZE9scFA4eE1vWGZmcyticWN4alk1WXpHd2VWZ2ZrQ0s3bTE1dXUr?=
 =?utf-8?B?RUhiL2RmNnZKcEMyQ3RtdVVNVmpFQmp6OVZ4d29OSEFYclJOUVo4bWN6RDZa?=
 =?utf-8?B?NU1TbnN3YndpcnVJdUpteFNYYktkNVo1RTd3UHdVTVJJMStHM09ONVRvOFR2?=
 =?utf-8?B?ZkI2Ly83QnRjUnNmcVN6clBBQ05KRGlqYnVMd2pkaDdKVit3bXZPWFV5elhN?=
 =?utf-8?B?MUNqeldsUGdqWkh4L0ZISEpMMDVhQlZlalIybm16WTBqd1QzazBzOGs0SzQw?=
 =?utf-8?B?ZHZXemNCRXc5a2ZlQnV1dHhtQ09VS1FUdTByU3FEcVNjR2Y4SXRqSWsrN1Ro?=
 =?utf-8?B?Q1ZNSk5nSFZuRWF2b3dtaUdrR3hYTVZjRlB6eFlJaVBmT05NWnlPUTh2SHlI?=
 =?utf-8?Q?YHvtmhhquVz/ABKMhWSgX7I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef17af00-6f63-4a23-0d54-08daa6077dc5
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 12:53:53.2488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3b91GMQtfVl/omH/h2egQThE880V8vuxKJnxxOvX+OoeniHJKJfO2kp8HQQgu2OJgkE2Cl3L08mUxoGKzCP+ngyreVr3cyUcDjWrTJv3ssTUAt19HLUqTHRIUOcB00Q+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4645
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v6 0/7] drm/i915/display: Don't use port enum as
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

v2: ddi_index defined for platforms starting from Gen75. Many platforms
from Gen75 has ddi support.
v3: Updated DDI_CLK_SEL macro to use new index for DDI register offset
caculation.
v4: After removing d13_port_domains array, d12_port_domains is used for
all platforms with DISPLAY_VER 12 and above. So the port_end member had
to fixed to extend it for ports D and E.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Balasubramani Vivekanandan (7):
  drm/i915/display: Pass struct drm_i915_private to DDI_BUF_CTL macro
  drm/i915/display: Pass struct drm_i915_private to DDI_CLK_SEL macro
  drm/i915/display: Define the DDI port indices inside device info
  drm/i915/display: Free port enums from tied to register offset
  drm/i915/display: Remove PORT_D_XELPD/PORT_E_XELPD platform specific
    defintions
  drm/i915/display: Fix port_identifier function
  drm/i915/display: cleanup unused DDI port enums

 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +--
 drivers/gpu/drm/i915/display/intel_bios.c     |  7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 80 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_display.c  | 12 +--
 drivers/gpu/drm/i915/display/intel_display.h  | 29 ++++---
 .../drm/i915/display/intel_display_power.c    | 44 +---------
 drivers/gpu/drm/i915/display/intel_fdi.c      | 14 ++--
 drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
 drivers/gpu/drm/i915/gvt/display.c            | 30 +++----
 drivers/gpu/drm/i915/gvt/handlers.c           | 17 ++--
 drivers/gpu/drm/i915/i915_pci.c               | 46 ++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  7 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 10 +--
 include/drm/i915_component.h                  |  2 +-
 15 files changed, 153 insertions(+), 164 deletions(-)

-- 
2.34.1

