Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A93CE155C68
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 18:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F9146EB03;
	Fri,  7 Feb 2020 17:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42EB46E0B9
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:31:47 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id e8so1204359plt.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8RBGd2dIWhbB8EhuP5qBS7TaMKY8LXFw643AAtnOMBE=;
 b=pLZznSTUXGY1Q9bzpkGxIkRye0PPAUertLYItsVrIJcdo6Q0CX1wOcj1XZPypjqqpV
 +NCXeEBXj4XTnvw1sWKnaVaCLeqtN4+wEsYGRv2Ouvx3WwdjJihjhzPMq2MNgosD66UZ
 B2uA7FgL5oK1FdzmCvVO1++UZdjI5I8VDk+nGLUro+wdAJ6w6ZFaH5I7/W5O0/cnNHSV
 SGud/0TdNb+mgkiiduHtKh+rsUtZuzIO/+T1hn/+s/jh7fz/cBfPNRhnDYeSw2mL8qKu
 rGAEUAKxXWzffLtxFQ1PGxE9yJgyprV7h4vk+hO4EBkGHeFZh9L+ToIIx1GO09bYDVrj
 lQjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8RBGd2dIWhbB8EhuP5qBS7TaMKY8LXFw643AAtnOMBE=;
 b=IuGRUSxIkSLBhZHiYia6zraDugFLwqI1/d/enfKsp39/Q2zNLPOxB0PwStDnTW2bq7
 7xxaOTossT72QF2ke3N72Rp1+rPNGLxG/qPKfT5MJyjamO0sFe60kZI3Z2sICD1KQAso
 axS6KyHTlpXrtnR6ATPGPQRdU8R+HVdAOsmOJiy2K7DPZ4uMZh1pbxEgkCXyFu2BeJM6
 ZLBxAaByFQHXzR5FBw1UoVQMYlgy4kkgNymcjXX74to0ShaGrH3kdEUyeSY4Mg6iF7a1
 iKU8mno8kTOJUFWOKmWJHYXCMsI0SUHGJAplqO65xEC+8JOdXkX/ea4QIhJsBVtQ7r6j
 tWCw==
X-Gm-Message-State: APjAAAUDO9xQPj6wLIJ6osxdruanJH9zFpSCqnUMui1k6oX9CHs7CWBN
 6BRwXyU/g+Djc1FTnFpzHmdCZlRoceRIeg1W
X-Google-Smtp-Source: APXvYqz4GG3pFTxTr+B7IAvsDHwABp/Zzq3dvtl3DNIkHqHYisDd5uih2axoZ53STqwbSwcAEvBOuw==
X-Received: by 2002:a17:90a:c388:: with SMTP id
 h8mr4624308pjt.83.1581093106772; 
 Fri, 07 Feb 2020 08:31:46 -0800 (PST)
Received: from localhost.localdomain ([2408:821a:3c17:470:a5ab:4c98:9f50:3cb0])
 by smtp.gmail.com with ESMTPSA id d3sm3365459pfn.113.2020.02.07.08.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:31:46 -0800 (PST)
From: youling257 <youling257@gmail.com>
To: chris@chris-wilson.co.uk
Date: Sat,  8 Feb 2020 00:31:25 +0800
Message-Id: <20200207163125.15903-1-youling257@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20191219124353.8607-2-chris@chris-wilson.co.uk>
References: <20191219124353.8607-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 07 Feb 2020 17:01:43 +0000
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/gt: Track engine round-trip times
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
Cc: intel-gfx@lists.freedesktop.org, youling257 <youling257@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch cause GPU hang on my Bay trail z3735f.
https://gitlab.freedesktop.org/drm/intel/issues/1144
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
