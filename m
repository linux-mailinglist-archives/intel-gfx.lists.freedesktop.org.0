Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3FC49F3BE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 07:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450E410F6C7;
	Fri, 28 Jan 2022 06:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D9810F6C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 06:37:09 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 20S1wsmp015087; 
 Fri, 28 Jan 2022 06:37:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2021-07-09;
 bh=Ee50R4RLq3KYbqZt0ZPO82+dbXg036LR/jE/3DQiYxc=;
 b=JbSIU7NRMIyP9/qubWXUbDvIbxwp4zZPYU+gXydqwR/rT6ifGWH2apG8mbk+5PVT2hAP
 QWBXVT/IvoCe4rHSKPs1x0XJ7gmbw+cK8mfz5LmRvweDgN9r5IycLjWZ3lD+tI1RFajb
 kPLXYGuaFFgxAPPYuOD/rh5xOUCxd/0Q3icukti6PGASMAhQyMD5qLkp4hZRIaHeuWLr
 z7urs90lLTCtw2tpcmmT9wB9H9zuMLfFSRniavq49w9sByLu084hls4bGFCnDXuSqG6C
 ZaGV29XyvQGV7P2wkAHc03JNklN6WapyzB/et7JfUzrRUrF9YUR7w9++uHLihcrH4r/V hA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by mx0b-00069f02.pphosted.com with ESMTP id 3duvsj27ny-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jan 2022 06:37:05 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 20S6V8Yh176403;
 Fri, 28 Jan 2022 06:37:04 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
 by userp3030.oracle.com with ESMTP id 3dr72511dq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jan 2022 06:37:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FXK/CQ4SlYRxRXhpNKHsaV8ldJvBjCIPU3uu/cFar9N87aC+3tTJvADfAm0hCUGZ91W8udUP7C6io0nNR4UoZ3wvnHMGKf3UI2l7io0h3wEepllWaP79H+IrnNQaJdj2pRZ/TV+gG3p3WLRubPsqHZY6TwVsFdmgE+FrQgTGiy8mZcsVz2D3NrGrByDb5Xlff/jG/Yos2b1O9RfOuVWvtPVOpDs/yMqg9sd8ztSFUZlVm6E8NYZh9PgseYzLiW2yeCK19Za7nMb/jNuCUA5nXhsdk3Qa3MXXYskZxBl48KZSyWh6p9DtQ3jnUcNWLhsAG+kYYmlHMhnxL0AElWUkLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=npcoYEhDC9CB3WsJVMfBzVherXZMvZii9sJ7Th0xfzY=;
 b=HzVpFwIRnU0qWou/FZvfiIjti1ADYvOfzL+pPT5DiBUxt3J5Nl6YTEHex5GWD07vAmPCR1rt0YjPtLW4njUWB81k378E06da8ofP2CsulBajXRoC4ZG8LuFKAtVtRNHEz+8I/dsxzu0nsqw+zPcM45DdHWoMmlxD/Y21vaF2io0jzosnd8fjlUrecu3KAzCrxMTZTVecj9S2Pwv6JN7H/aKFjws6haqqL7aR/LkF203Kc/xwT2ZSZ94nTh4nc6o6BZ33RcYWX8+IXWIKrazYmSYmn1r0AMDNCGQAghOujxSZEpluP4n//j69mbBKxbdR86URQbp6zuhnWTmIgIo2Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npcoYEhDC9CB3WsJVMfBzVherXZMvZii9sJ7Th0xfzY=;
 b=zp5ySSuP50NSHZc4VSUQLNFEqwjQUanQiqT06viN9ua2KczGicVBgguaRasItAnzg5eV9y1r6V/zsNJHdsm7X6MMEQHxeXExRApa3pwBABxWnrYd6j0olHVYkP8gjWKkdmUtZc8+GgUuaQ6h3GgrtwNNUdU24VKFT/jPqKcSvgM=
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32) by SA1PR10MB5784.namprd10.prod.outlook.com
 (2603:10b6:806:23f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.13; Fri, 28 Jan
 2022 06:37:02 +0000
Received: from CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::cdcc:584:3514:f052]) by CY4PR1001MB2358.namprd10.prod.outlook.com
 ([fe80::cdcc:584:3514:f052%5]) with mapi id 15.20.4909.017; Fri, 28 Jan 2022
 06:37:02 +0000
Date: Fri, 28 Jan 2022 09:36:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <20220128063644.GH1978@kadam>
References: <20220127085115.GD25644@kili> <YfMcAzJgjeqzLVEB@intel.com>
 <f8044efa53f2ea6f998a08592343c9a8f952c718.camel@linux.intel.com>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f8044efa53f2ea6f998a08592343c9a8f952c718.camel@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0018.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4c::23)
 To CY4PR1001MB2358.namprd10.prod.outlook.com
 (2603:10b6:910:4a::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c899abc8-ab9a-4f25-8ff2-08d9e22897b4
X-MS-TrafficTypeDiagnostic: SA1PR10MB5784:EE_
X-Microsoft-Antispam-PRVS: <SA1PR10MB5784FD5C43BB0C61C7AD01E38E229@SA1PR10MB5784.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wak2EaWbFf+cIVaj02b7cpHNwL86BenzoyUymN0mXhGeL4e88N1oPNjIW67YNJTNpJkfoq/uchpe6GZBg7x/CaRWiuqAbKUu2oUqHC31vPcRh0nNJo/02xNXKFOV6ZMG8jWNW2dPjrQLltFBfU9Ze6dTS9z4uhl+tJOv9gKfHpW4w6x5SfLxVpPk5IdVjQTtxMajSAKoO4DuOKrVieYioIQRnmgocYe2e7n8/Ze6OGaMqprmKB1AVRZAGgH1BfQMgJTQxFXuIq+u1No8HembAmEcTFMaVzkThYEm7FdUgfi+/bTq8lYEzjMz5ys7+CoTvDAHELfCaoTXbR6m7prqExNav+mznc9bLVoW3VzDnD6vvzsqRhP3EZt4sz4cbxsU2VFW0qjLyArCgKn7n2OzfNDyiKSQso+SNOfHjwmxG8atJ7noFBJtt/Wdf0JcIfUrH6Ae7oSr0fEXmRA5zasKHrRBKen+To0AH6VRJ4AdCkypEQV4ebqYjthX++JWYA7QgEMInQ8+KKlpaGM+lVMKwwSQozowLVRUPHotPrL+nHd3rAVEGhEFuR1/wvmR8zgIKwO1vMfYi8SW7Ngtl5JLW1ONV2kbt9NcLDk0bFjvUXXk90+P0x744V6HvKLzhFhqOGYyQD+2Buxyv2cF6UxzfG3ZsvsfPcBXpfVjQibYkUWuDMkCWiNQ71QQtn+sgyn1oXQKnAUBj5YW+w5cjMYe6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1001MB2358.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(366004)(8936002)(2906002)(38100700002)(1076003)(66946007)(44832011)(508600001)(66574015)(86362001)(38350700002)(6512007)(8676002)(52116002)(33716001)(6486002)(6666004)(186003)(26005)(54906003)(316002)(83380400001)(4744005)(33656002)(4326008)(66476007)(9686003)(66556008)(6506007)(6916009)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0z9rsmdQHWKorSd5m8yDbNZlFmNMhbBAJy2kxBSKzPutQa2NNf1krHwn0M?=
 =?iso-8859-1?Q?uZ+2P9401aDvnOB0NtUI2dFTwThwzpFXrEZ1VpakEm5JhuOPdWpLUCoZIy?=
 =?iso-8859-1?Q?zYrFKwbLvb+7EMEhUfgfRV/z7uYNsLUT1AjjQmV7LdPi0NrS3OOTz+ahC+?=
 =?iso-8859-1?Q?QJyiLz2VL6QeK7oyelDrB3SMOlEU6kmqq3Ba7+RLj1qJQPsrovEsxD9998?=
 =?iso-8859-1?Q?YY244Ziqs51Gl9vBw7EIGugHfOIASX58732nSqxAPdx5y/nsUB+Jb+3nUP?=
 =?iso-8859-1?Q?BDTH5vsUcyGOT9xydoyaNOEgV3bG7yUXnVH4CkdFA/YgQAbb7vKZLtS0gE?=
 =?iso-8859-1?Q?dfsrwVW/8MwrE9gtw27xDvhbpW5QaLpR99cIt6oS1fhONWx/znGQYbZlFi?=
 =?iso-8859-1?Q?vjkrXaIBXlufd6WRBAoaZjEAh0RallbvddMUOR8umdWAyo0YSWyuYJhrpt?=
 =?iso-8859-1?Q?RjcrCb4+37fvH/+D3Equy6BIR11OHPgPKt3+LdDQ8UjwgdDEaKicSrMcq5?=
 =?iso-8859-1?Q?agNIs6u3ExCHw2lANJc3S+sE7L1qlun2vewldmA7So/aqQknptPzZsJGlf?=
 =?iso-8859-1?Q?LffrkcX8JYIAS2P4dslkoVxfNY5lVeOospG3Knb2dkK67r54GWli09sTct?=
 =?iso-8859-1?Q?Po++yqXLfHYFWWn44RIOsi3RrQpcQoHSOIPqpFWGl3OgW+ndgY7nT+5/UT?=
 =?iso-8859-1?Q?a2qLbzJCxKh8DiGXJ9h84XQCWpCWlcumIL8sx/+nYfVe7KM98Ga+FASKcq?=
 =?iso-8859-1?Q?HCvVP09mWluoyZNp12Dx4ZJvLHbxyQ+WCHVmITdv4c8s9W6zftoA6fxbrT?=
 =?iso-8859-1?Q?HJesPnGcZzeH/9QMNtqvdwQ3kcB4PfK0CGQG0yV6BYo6SnjG8ath/ykT02?=
 =?iso-8859-1?Q?X7MtYGbiPBkJGXQwfQcZAJtybGqlN+ykVLKytI4fDReCL/mjln085b/TUQ?=
 =?iso-8859-1?Q?7EJL7EYst1YKIufBcDvsNrPSaCFnpPAqv82YWadT3XHNGpB9HL+HB/3g58?=
 =?iso-8859-1?Q?CaUTZ2zxfTiABWaMDM3+LZUs7/bnp5SbfCU7XBcNA/KzUIGHPv0zAY+J+P?=
 =?iso-8859-1?Q?y7OpjCOEEFQrLU9UqQMjIyfcibeBPRiGuP5GCMb7Xc9ehQKxXxxCTO8jHF?=
 =?iso-8859-1?Q?q7NOT5ptyU8I1xhZqeLhnU9cBb9qEgiwLgPNgf3aGzAoiIyDaZompQuAMK?=
 =?iso-8859-1?Q?1KOLSZ7iSPd2oB/TYUkmR3aTsE/ex6N4y0z0ylPUdu/16JFVCEHY1N0OKo?=
 =?iso-8859-1?Q?8SThRH1KGpMyJ2FUBc1g4n/v2+ZVLFRVoeWUorMRHLu2hOl00H1xZPKzA+?=
 =?iso-8859-1?Q?8qqeumd6unnjxpWf9bIvbOFWeBaNRh0Yp96lrVyzZXwmWpwCfUFwIMzyW4?=
 =?iso-8859-1?Q?x0uITofcgFbDIKLMuguEuXbDv/UjOy/gX3SW8BLSy/5eNdMnCHAhwpEgMu?=
 =?iso-8859-1?Q?1cYDDOT8vtAXywJtkuzjrjrILqKZMQbY8drrRmi+rGnbVhITj9Bm9mkYYh?=
 =?iso-8859-1?Q?yOqQzpco5v7iR8X65cpBUk4ThjOrVo1a4Us9cuGCvS3za7pZEf2aSpADaK?=
 =?iso-8859-1?Q?u8/3+0c/HVjHJTjIIWjxpc8VySaVLuJrXCG1117h9JbLYEkBpZVj0CeG+q?=
 =?iso-8859-1?Q?W8FA0xM/b71AoBU7JxwfM8v0G4LQTMPGf9u3RASW/PGR2GjE7zP+r/Qq0k?=
 =?iso-8859-1?Q?HwIIjeO9HIUXkiMEnfAaGR/MgS8Kd95fp4wQPHmPnLwYZ6qHRkTnu5JCJR?=
 =?iso-8859-1?Q?S5TuaqnNScpNlixvF14kG7ibI=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c899abc8-ab9a-4f25-8ff2-08d9e22897b4
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1001MB2358.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2022 06:37:02.3272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VaxSrfLYCSQl+BVSfV5srNExXgB6j7f1UJdfmeZNpm+68nP4NAApOhTe9RkECDW+A26RH+PLn0eGlWyIPjduXS7YLrgfi3+Yr8oj53ZzWPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5784
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10240
 signatures=669575
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 adultscore=0 spamscore=0 bulkscore=0 mlxscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201280039
X-Proofpoint-ORIG-GUID: M8pdqpVcPzBQJYmk7maC_lLpGhF4pmbK
X-Proofpoint-GUID: M8pdqpVcPzBQJYmk7maC_lLpGhF4pmbK
Subject: Re: [Intel-gfx] [PATCH] drm/i915: delete shadow "ret" variable
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 28, 2022 at 07:20:02AM +0100, Thomas Hellström wrote:
> On Thu, 2022-01-27 at 17:26 -0500, Rodrigo Vivi wrote:
> > On Thu, Jan 27, 2022 at 11:51:15AM +0300, Dan Carpenter wrote:
> > > This "ret" declaration shadows an existing "ret" variable at the
> > > top of
> > > the function.  Delete it.
> > > 
> > > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > 
> > and pushing right now
> 
> Should probably have had a Fixes: tag on this one. I'm not 100% sure
> whether the faulty patch is already upstream. In that case we might
> need to manually include it in a -fixes pull.
> 

It's not really a bug.  It's just a Sparse warning which is disabled
by default (-Wshadow).  The patch is in linux-next.

Fixes: 2f6b90da9192 ("drm/i915: Use vma resources for async unbinding")

regards,
dan carpenter

