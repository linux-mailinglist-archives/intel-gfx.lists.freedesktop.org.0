Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A17748BACA1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6144410FD2C;
	Fri,  3 May 2024 12:38:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=quicinc.com header.i=@quicinc.com header.b="U0Fo00mN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA9010F6A1;
 Fri,  3 May 2024 06:01:07 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4433a53G004818;
 Fri, 3 May 2024 06:01:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
 message-id:date:mime-version:subject:to:cc:references:from
 :in-reply-to:content-type:content-transfer-encoding; s=
 qcppdkim1; bh=noN7kBLxq9TVGdHUBmY+gSoaFbzmaEzOs2TwYGDA4NA=; b=U0
 Fo00mN+XXjGU8b/VaAv8ENQXxmXztOCDwkY1Qe1bQiafxAnopThnVdYwUX/Jf4Aa
 xATL/sB5o1OokTs7y0NcRSRY1KEkcpwI84k40q31WC41CUkzv5Hg6utRT/K29FQv
 pyuyOIwGZSfxj8AdrnRprofbH4RRj37b6KJDFo9P6EIGzu8K9KI3O7QDjOG2j4sJ
 QjLUjeBQnrW6xQ49pG1m6ZYYd0u2BV8/dmUVxuEzs1gSxRTZ+wq4qbOMkncesqUt
 5PiFQWkY3M1pYZi5qYpZqyQd5uOIC8tp9Bs3zlkoJHEd50J/HNOPb4wC+J73gPP7
 eO02QrtSpjm4vE6TKdDQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xv6q0td3h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 03 May 2024 06:00:59 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com
 [10.47.209.196])
 by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 44360wPC008346
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 3 May 2024 06:00:58 GMT
Received: from [10.216.13.234] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 2 May 2024
 23:00:54 -0700
Message-ID: <d7f7cfae-78d5-41aa-aaf9-0d558cdfcbea@quicinc.com>
Date: Fri, 3 May 2024 11:30:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [linux-next:master] BUILD REGRESSION
 9c6ecb3cb6e20c4fd7997047213ba0efcf9ada1a
To: Greg KH <gregkh@linuxfoundation.org>, kernel test robot <lkp@intel.com>
CC: Andrew Morton <akpm@linux-foundation.org>, Linux Memory Management List
 <linux-mm@kvack.org>,
 <amd-gfx@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <linux-arch@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <netdev@vger.kernel.org>,
 <nouveau@lists.freedesktop.org>
References: <202405030439.AH8NR0Mg-lkp@intel.com>
 <2024050342-slashing-froth-bcf9@gregkh>
Content-Language: en-US
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <2024050342-slashing-froth-bcf9@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800
 signatures=585085
X-Proofpoint-ORIG-GUID: O6_fT_RHzM9at2lNZPzBwfaLMctBtVtb
X-Proofpoint-GUID: O6_fT_RHzM9at2lNZPzBwfaLMctBtVtb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-03_03,2024-05-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 mlxlogscore=726 malwarescore=0 phishscore=0 adultscore=0 clxscore=1011
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2405030041
X-Mailman-Approved-At: Fri, 03 May 2024 12:38:28 +0000
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



On 5/3/2024 10:42 AM, Greg KH wrote:
> Ok, I'm getting tired of seeing these for the USB portion of the tree,
> so I went to look for:
> 
> On Fri, May 03, 2024 at 04:44:42AM +0800, kernel test robot wrote:
>> |-- arc-randconfig-002-20240503
>> |   `-- drivers-usb-dwc3-core.c:warning:variable-hw_mode-set-but-not-used
> 
> This warning (same for all arches), but can't seem to find it anywhere.
> 
> Any hints as to where it would be?
> 

Hi Greg,

  I think the hw_mode was not removed in hs_phy_setup and left unused.

  Thinh reported the same when there was a merge conflict into linux 
next (that the hw_mode variable was removed in ss_phy_setup and should 
be removed in hs_phy_setup as well):

https://lore.kernel.org/all/20240426213923.tyeddub4xszypeju@synopsys.com/

  Perhaps that was missed ?

Regards,
Krishna,
