Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8131A12B4
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 19:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CC06E12E;
	Tue,  7 Apr 2020 17:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A94B6E12E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 17:27:54 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id 111so2569257oth.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 10:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=KdqaAAJflyge1OY4FTOM/OByFlIeyjJc5sWo18ksWr4=;
 b=PCKHUnGbhj9pqItVIY3Hm45IGqui1dS1BJQkc+NydxiacKk/WYsajoKnw0CK/DrcDq
 s40zpWIR+9hpHmJ5W+Y8dMLHbxvDkW67vM8mH7hLlS58p2ZqrLxExjp1eQioZuZI2nah
 Dgiecp6m1xysN6GCkhUedk6ikEBNeEHX9BzwDMKc9qW9oVQ2TrJN+m5wNnH1QSK7AbuS
 RRCCV2j+3mIrCknxulv+bkhiDvSyUDL5RyMX6XhexJ7+48vmg8dt2BiwIfXUL2E/WCrK
 65GK3se1u9DuCPxzXNCS81QkJKnxTV38+kWcl1X6iZi+XO3IU0YrpeLudNext+3J8RP7
 28VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:subject:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=KdqaAAJflyge1OY4FTOM/OByFlIeyjJc5sWo18ksWr4=;
 b=ERtXQ9R90GH0DDAlrvrgwwAgYUAaCld63DF4V9wyWQtdUOuSnlOd6nMNS+vIwnJtOu
 lsOd+AX7nMZfHTv6dQ9dQMnkNpqJ7jw6hO7rJ+zea7KHyiA1jiwaNwh6s/QxUlAB579G
 yoXWn/dkSUeQ5VXgjqxuyjnirozj3USSvFQVJm2ik3sIRknslNvSz8sQkPx1Vo6mAhA6
 ytyPZ9hgJBjsygsbDVYZk+ekJxQSsbnFzLzm2O8/D2weV9RE6jwuy4UN0mNWhEb0cjh7
 2YqPLNm8avEN5sNB+2fnr2e3jDkYuJdnBWP7tsf6+9Ad90EqkPeU8vxP6WT44ufZt7Xc
 J9Xw==
X-Gm-Message-State: AGi0PuYTcDgYEzOaFqbHYEe8RYHIYOFAZavtYnX0wwwz+faEAanZ8yaL
 TGL/H2vUP1kyfPb45HWh2It2v7F1
X-Google-Smtp-Source: APiQypKBudTBOxyXhkheXR3BjemfTWjp5WOoDr6VjtQZFi/bNq43h3CnvY1/TUfg2apSX0fq/HH6zA==
X-Received: by 2002:a05:6830:4038:: with SMTP id
 i24mr2610200ots.0.1586280473646; 
 Tue, 07 Apr 2020 10:27:53 -0700 (PDT)
Received: from [192.168.1.120] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id p25sm4357696oth.49.2020.04.07.10.27.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 10:27:53 -0700 (PDT)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Message-ID: <34c9768d-bb55-7834-c232-37b1751f4e84@lwfinger.net>
Date: Tue, 7 Apr 2020 12:27:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-gfx] Regression in i915
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris,

With a recent pull of kernel head, my Toshiba laptop with an i915 graphics card 
fails to boot. It hangs at the point where it should switch to a graphics 
screen. I bisected the problem to

commit 7dc8f1143778a35b190f9413f228b3cf28f67f8d
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Wed Mar 11 16:03:10 2020 +0000

     drm/i915/gem: Drop relocation slowpath

The lspci command reports my card as
00:02.0 VGA compatible controller [0300]: Intel Corporation 4th Gen Core 
Processor Integrated Graphics Controller [8086:0416] (rev 06)

Has this problem been reported, and is there a fix?

Thanks,

Larry
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
